
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WriterContext ;
struct TYPE_6__ {int nb_programs; int ** programs; } ;
struct TYPE_5__ {TYPE_2__* fmt_ctx; } ;
typedef TYPE_1__ InputFile ;
typedef int AVProgram ;
typedef TYPE_2__ AVFormatContext ;


 int SECTION_ID_PROGRAMS ;
 int show_program (int *,TYPE_1__*,int *) ;
 int writer_print_section_footer (int *) ;
 int writer_print_section_header (int *,int ) ;

__attribute__((used)) static int show_programs(WriterContext *w, InputFile *ifile)
{
    AVFormatContext *fmt_ctx = ifile->fmt_ctx;
    int i, ret = 0;

    writer_print_section_header(w, SECTION_ID_PROGRAMS);
    for (i = 0; i < fmt_ctx->nb_programs; i++) {
        AVProgram *program = fmt_ctx->programs[i];
        if (!program)
            continue;
        ret = show_program(w, ifile, program);
        if (ret < 0)
            break;
    }
    writer_print_section_footer(w);
    return ret;
}
