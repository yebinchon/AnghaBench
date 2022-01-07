
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int int16_t ;
struct TYPE_5__ {int height; int width; TYPE_1__* bands; } ;
struct TYPE_4__ {int* buf; int pitch; } ;
typedef TYPE_2__ IVIPlaneDesc ;


 int av_clip_uint8 (int const) ;

__attribute__((used)) static void ivi_output_plane(IVIPlaneDesc *plane, uint8_t *dst, ptrdiff_t dst_pitch)
{
    int x, y;
    const int16_t *src = plane->bands[0].buf;
    ptrdiff_t pitch = plane->bands[0].pitch;

    if (!src)
        return;

    for (y = 0; y < plane->height; y++) {
        int m = 0;
        int w = plane->width;
        for (x = 0; x < w; x++) {
            int t = src[x] + 128;
            dst[x] = t;
            m |= t;
        }
        if (m & ~255)
            for (x = 0; x < w; x++)
                dst[x] = av_clip_uint8(src[x] + 128);
        src += pitch;
        dst += dst_pitch;
    }
}
