
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WriterContext ;
struct TYPE_7__ {int nb_components; int flags; int log2_chroma_w; int log2_chroma_h; TYPE_1__* comp; int name; } ;
struct TYPE_6__ {int depth; } ;
typedef TYPE_2__ AVPixFmtDescriptor ;


 int ALPHA ;
 int AV_PIX_FMT_FLAG_RGB ;
 int BE ;
 int BITSTREAM ;
 int HWACCEL ;
 int PAL ;
 int PLANAR ;
 int PRINT_PIX_FMT_FLAG (int ,char*) ;
 int PSEUDOPAL ;
 int RGB ;
 int SECTION_ID_PIXEL_FORMAT ;
 int SECTION_ID_PIXEL_FORMATS ;
 int SECTION_ID_PIXEL_FORMAT_COMPONENT ;
 int SECTION_ID_PIXEL_FORMAT_COMPONENTS ;
 int SECTION_ID_PIXEL_FORMAT_FLAGS ;
 int av_get_bits_per_pixel (TYPE_2__ const*) ;
 TYPE_2__* av_pix_fmt_desc_next (TYPE_2__ const*) ;
 scalar_t__ do_show_pixel_format_components ;
 scalar_t__ do_show_pixel_format_flags ;
 int print_int (char*,int) ;
 int print_str (char*,int ) ;
 int print_str_opt (char*,char*) ;
 int writer_print_section_footer (int *) ;
 int writer_print_section_header (int *,int ) ;

__attribute__((used)) static void ffprobe_show_pixel_formats(WriterContext *w)
{
    const AVPixFmtDescriptor *pixdesc = ((void*)0);
    int i, n;

    writer_print_section_header(w, SECTION_ID_PIXEL_FORMATS);
    while (pixdesc = av_pix_fmt_desc_next(pixdesc)) {
        writer_print_section_header(w, SECTION_ID_PIXEL_FORMAT);
        print_str("name", pixdesc->name);
        print_int("nb_components", pixdesc->nb_components);
        if ((pixdesc->nb_components >= 3) && !(pixdesc->flags & AV_PIX_FMT_FLAG_RGB)) {
            print_int ("log2_chroma_w", pixdesc->log2_chroma_w);
            print_int ("log2_chroma_h", pixdesc->log2_chroma_h);
        } else {
            print_str_opt("log2_chroma_w", "N/A");
            print_str_opt("log2_chroma_h", "N/A");
        }
        n = av_get_bits_per_pixel(pixdesc);
        if (n) print_int ("bits_per_pixel", n);
        else print_str_opt("bits_per_pixel", "N/A");
        if (do_show_pixel_format_flags) {
            writer_print_section_header(w, SECTION_ID_PIXEL_FORMAT_FLAGS);
            PRINT_PIX_FMT_FLAG(BE, "big_endian");
            PRINT_PIX_FMT_FLAG(PAL, "palette");
            PRINT_PIX_FMT_FLAG(BITSTREAM, "bitstream");
            PRINT_PIX_FMT_FLAG(HWACCEL, "hwaccel");
            PRINT_PIX_FMT_FLAG(PLANAR, "planar");
            PRINT_PIX_FMT_FLAG(RGB, "rgb");



            PRINT_PIX_FMT_FLAG(ALPHA, "alpha");
            writer_print_section_footer(w);
        }
        if (do_show_pixel_format_components && (pixdesc->nb_components > 0)) {
            writer_print_section_header(w, SECTION_ID_PIXEL_FORMAT_COMPONENTS);
            for (i = 0; i < pixdesc->nb_components; i++) {
                writer_print_section_header(w, SECTION_ID_PIXEL_FORMAT_COMPONENT);
                print_int("index", i + 1);
                print_int("bit_depth", pixdesc->comp[i].depth);
                writer_print_section_footer(w);
            }
            writer_print_section_footer(w);
        }
        writer_print_section_footer(w);
    }
    writer_print_section_footer(w);
}
