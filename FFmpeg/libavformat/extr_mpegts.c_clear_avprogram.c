
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {unsigned int id; scalar_t__ nb_stream_indexes; } ;
struct TYPE_6__ {TYPE_1__* stream; } ;
struct TYPE_5__ {int nb_programs; TYPE_3__** programs; } ;
typedef TYPE_2__ MpegTSContext ;
typedef TYPE_3__ AVProgram ;



__attribute__((used)) static void clear_avprogram(MpegTSContext *ts, unsigned int programid)
{
    AVProgram *prg = ((void*)0);
    int i;

    for (i = 0; i < ts->stream->nb_programs; i++)
        if (ts->stream->programs[i]->id == programid) {
            prg = ts->stream->programs[i];
            break;
        }
    if (!prg)
        return;
    prg->nb_stream_indexes = 0;
}
