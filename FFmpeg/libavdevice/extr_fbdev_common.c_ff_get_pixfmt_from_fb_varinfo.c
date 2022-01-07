
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rgb_pixfmt_map_entry {scalar_t__ bits_per_pixel; scalar_t__ red_offset; scalar_t__ green_offset; scalar_t__ blue_offset; int pixfmt; } ;
struct TYPE_6__ {scalar_t__ offset; } ;
struct TYPE_5__ {scalar_t__ offset; } ;
struct TYPE_4__ {scalar_t__ offset; } ;
struct fb_var_screeninfo {scalar_t__ bits_per_pixel; TYPE_3__ blue; TYPE_2__ green; TYPE_1__ red; } ;
typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;


 int AV_PIX_FMT_NONE ;
 int FF_ARRAY_ELEMS (struct rgb_pixfmt_map_entry*) ;
 struct rgb_pixfmt_map_entry* rgb_pixfmt_map ;

enum AVPixelFormat ff_get_pixfmt_from_fb_varinfo(struct fb_var_screeninfo *varinfo)
{
    int i;

    for (i = 0; i < FF_ARRAY_ELEMS(rgb_pixfmt_map); i++) {
        const struct rgb_pixfmt_map_entry *entry = &rgb_pixfmt_map[i];
        if (entry->bits_per_pixel == varinfo->bits_per_pixel &&
            entry->red_offset == varinfo->red.offset &&
            entry->green_offset == varinfo->green.offset &&
            entry->blue_offset == varinfo->blue.offset)
            return entry->pixfmt;
    }

    return AV_PIX_FMT_NONE;
}
