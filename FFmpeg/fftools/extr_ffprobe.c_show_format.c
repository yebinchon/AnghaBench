
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
typedef int WriterContext ;
struct TYPE_7__ {scalar_t__ bit_rate; int metadata; int probe_score; int duration; int start_time; TYPE_1__* iformat; int nb_programs; int nb_streams; int url; scalar_t__ pb; } ;
struct TYPE_6__ {TYPE_3__* fmt_ctx; } ;
struct TYPE_5__ {scalar_t__ long_name; scalar_t__ name; } ;
typedef TYPE_2__ InputFile ;
typedef TYPE_3__ AVFormatContext ;


 int AV_TIME_BASE_Q ;
 int SECTION_ID_FORMAT ;
 int SECTION_ID_FORMAT_TAGS ;
 int avio_size (scalar_t__) ;
 int do_bitexact ;
 scalar_t__ do_show_format_tags ;
 int fflush (int ) ;
 int print_int (char*,int ) ;
 int print_str (char*,scalar_t__) ;
 int print_str_opt (char*,char*) ;
 int print_str_validate (char*,int ) ;
 int print_time (char*,int ,int *) ;
 int print_val (char*,scalar_t__,int ) ;
 int show_tags (int *,int ,int ) ;
 int stdout ;
 int unit_bit_per_second_str ;
 int unit_byte_str ;
 int writer_print_section_footer (int *) ;
 int writer_print_section_header (int *,int ) ;

__attribute__((used)) static int show_format(WriterContext *w, InputFile *ifile)
{
    AVFormatContext *fmt_ctx = ifile->fmt_ctx;
    char val_str[128];
    int64_t size = fmt_ctx->pb ? avio_size(fmt_ctx->pb) : -1;
    int ret = 0;

    writer_print_section_header(w, SECTION_ID_FORMAT);
    print_str_validate("filename", fmt_ctx->url);
    print_int("nb_streams", fmt_ctx->nb_streams);
    print_int("nb_programs", fmt_ctx->nb_programs);
    print_str("format_name", fmt_ctx->iformat->name);
    if (!do_bitexact) {
        if (fmt_ctx->iformat->long_name) print_str ("format_long_name", fmt_ctx->iformat->long_name);
        else print_str_opt("format_long_name", "unknown");
    }
    print_time("start_time", fmt_ctx->start_time, &AV_TIME_BASE_Q);
    print_time("duration", fmt_ctx->duration, &AV_TIME_BASE_Q);
    if (size >= 0) print_val ("size", size, unit_byte_str);
    else print_str_opt("size", "N/A");
    if (fmt_ctx->bit_rate > 0) print_val ("bit_rate", fmt_ctx->bit_rate, unit_bit_per_second_str);
    else print_str_opt("bit_rate", "N/A");
    print_int("probe_score", fmt_ctx->probe_score);
    if (do_show_format_tags)
        ret = show_tags(w, fmt_ctx->metadata, SECTION_ID_FORMAT_TAGS);

    writer_print_section_footer(w);
    fflush(stdout);
    return ret;
}
