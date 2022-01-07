
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WriterContext ;
struct TYPE_6__ {int id; int program_num; int nb_stream_indexes; int pmt_pid; int pcr_pid; size_t* stream_index; int metadata; int end_time; int start_time; } ;
struct TYPE_5__ {int * streams; int * fmt_ctx; } ;
typedef TYPE_1__ InputFile ;
typedef TYPE_2__ AVProgram ;
typedef int AVFormatContext ;


 int AV_TIME_BASE_Q ;
 int SECTION_ID_PROGRAM ;
 int SECTION_ID_PROGRAM_STREAMS ;
 int SECTION_ID_PROGRAM_TAGS ;
 scalar_t__ do_show_program_tags ;
 int print_int (char*,int) ;
 int print_time (char*,int ,int *) ;
 int print_ts (char*,int ) ;
 scalar_t__* selected_streams ;
 int show_stream (int *,int *,size_t,int *,int) ;
 int show_tags (int *,int ,int ) ;
 int writer_print_section_footer (int *) ;
 int writer_print_section_header (int *,int ) ;

__attribute__((used)) static int show_program(WriterContext *w, InputFile *ifile, AVProgram *program)
{
    AVFormatContext *fmt_ctx = ifile->fmt_ctx;
    int i, ret = 0;

    writer_print_section_header(w, SECTION_ID_PROGRAM);
    print_int("program_id", program->id);
    print_int("program_num", program->program_num);
    print_int("nb_streams", program->nb_stream_indexes);
    print_int("pmt_pid", program->pmt_pid);
    print_int("pcr_pid", program->pcr_pid);
    print_ts("start_pts", program->start_time);
    print_time("start_time", program->start_time, &AV_TIME_BASE_Q);
    print_ts("end_pts", program->end_time);
    print_time("end_time", program->end_time, &AV_TIME_BASE_Q);
    if (do_show_program_tags)
        ret = show_tags(w, program->metadata, SECTION_ID_PROGRAM_TAGS);
    if (ret < 0)
        goto end;

    writer_print_section_header(w, SECTION_ID_PROGRAM_STREAMS);
    for (i = 0; i < program->nb_stream_indexes; i++) {
        if (selected_streams[program->stream_index[i]]) {
            ret = show_stream(w, fmt_ctx, program->stream_index[i], &ifile->streams[program->stream_index[i]], 1);
            if (ret < 0)
                break;
        }
    }
    writer_print_section_footer(w);

end:
    writer_print_section_footer(w);
    return ret;
}
