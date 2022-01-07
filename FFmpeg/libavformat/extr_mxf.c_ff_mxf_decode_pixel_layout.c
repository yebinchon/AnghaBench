
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_2__ {int pix_fmt; int data; } ;


 TYPE_1__* ff_mxf_pixel_layouts ;
 int memcmp (char const*,int ,int) ;
 int num_pixel_layouts ;

int ff_mxf_decode_pixel_layout(const char pixel_layout[16], enum AVPixelFormat *pix_fmt)
{
    int x;

    for(x = 0; x < num_pixel_layouts; x++) {
        if (!memcmp(pixel_layout, ff_mxf_pixel_layouts[x].data, 16)) {
            *pix_fmt = ff_mxf_pixel_layouts[x].pix_fmt;
            return 0;
        }
    }

    return -1;
}
