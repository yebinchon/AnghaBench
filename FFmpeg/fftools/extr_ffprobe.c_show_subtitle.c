
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WriterContext ;
struct TYPE_3__ {int num_rects; int end_display_time; int start_display_time; int format; int pts; } ;
typedef TYPE_1__ AVSubtitle ;
typedef int AVStream ;
typedef int AVFormatContext ;
typedef int AVBPrint ;


 int AV_BPRINT_SIZE_UNLIMITED ;
 int AV_TIME_BASE_Q ;
 int SECTION_ID_SUBTITLE ;
 int av_bprint_finalize (int *,int *) ;
 int av_bprint_init (int *,int,int ) ;
 int fflush (int ) ;
 int print_int (char*,int ) ;
 int print_str (char*,char*) ;
 int print_time (char*,int ,int *) ;
 int print_ts (char*,int ) ;
 int stdout ;
 int writer_print_section_footer (int *) ;
 int writer_print_section_header (int *,int ) ;

__attribute__((used)) static void show_subtitle(WriterContext *w, AVSubtitle *sub, AVStream *stream,
                          AVFormatContext *fmt_ctx)
{
    AVBPrint pbuf;

    av_bprint_init(&pbuf, 1, AV_BPRINT_SIZE_UNLIMITED);

    writer_print_section_header(w, SECTION_ID_SUBTITLE);

    print_str ("media_type", "subtitle");
    print_ts ("pts", sub->pts);
    print_time("pts_time", sub->pts, &AV_TIME_BASE_Q);
    print_int ("format", sub->format);
    print_int ("start_display_time", sub->start_display_time);
    print_int ("end_display_time", sub->end_display_time);
    print_int ("num_rects", sub->num_rects);

    writer_print_section_footer(w);

    av_bprint_finalize(&pbuf, ((void*)0));
    fflush(stdout);
}
