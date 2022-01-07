
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int nb_programs; TYPE_1__** programs; } ;
struct TYPE_9__ {int id; int pmt_version; void* end_time; void* start_time; int pts_wrap_behavior; void* pts_wrap_reference; int discard; } ;
typedef TYPE_1__ AVProgram ;
typedef TYPE_2__ AVFormatContext ;


 int AVDISCARD_NONE ;
 int AV_LOG_TRACE ;
 void* AV_NOPTS_VALUE ;
 int AV_PTS_WRAP_IGNORE ;
 int av_log (TYPE_2__*,int ,char*,int) ;
 TYPE_1__* av_mallocz (int) ;
 int dynarray_add (TYPE_1__***,int*,TYPE_1__*) ;

AVProgram *av_new_program(AVFormatContext *ac, int id)
{
    AVProgram *program = ((void*)0);
    int i;

    av_log(ac, AV_LOG_TRACE, "new_program: id=0x%04x\n", id);

    for (i = 0; i < ac->nb_programs; i++)
        if (ac->programs[i]->id == id)
            program = ac->programs[i];

    if (!program) {
        program = av_mallocz(sizeof(AVProgram));
        if (!program)
            return ((void*)0);
        dynarray_add(&ac->programs, &ac->nb_programs, program);
        program->discard = AVDISCARD_NONE;
        program->pmt_version = -1;
    }
    program->id = id;
    program->pts_wrap_reference = AV_NOPTS_VALUE;
    program->pts_wrap_behavior = AV_PTS_WRAP_IGNORE;

    program->start_time =
    program->end_time = AV_NOPTS_VALUE;

    return program;
}
