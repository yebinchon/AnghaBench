
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WriterContext ;
struct TYPE_3__ {int nb_streams; int * streams; int * fmt_ctx; } ;
typedef TYPE_1__ InputFile ;
typedef int AVFormatContext ;


 int SECTION_ID_STREAMS ;
 scalar_t__* selected_streams ;
 int show_stream (int *,int *,int,int *,int ) ;
 int writer_print_section_footer (int *) ;
 int writer_print_section_header (int *,int ) ;

__attribute__((used)) static int show_streams(WriterContext *w, InputFile *ifile)
{
    AVFormatContext *fmt_ctx = ifile->fmt_ctx;
    int i, ret = 0;

    writer_print_section_header(w, SECTION_ID_STREAMS);
    for (i = 0; i < ifile->nb_streams; i++)
        if (selected_streams[i]) {
            ret = show_stream(w, fmt_ctx, i, &ifile->streams[i], 0);
            if (ret < 0)
                break;
        }
    writer_print_section_footer(w);

    return ret;
}
