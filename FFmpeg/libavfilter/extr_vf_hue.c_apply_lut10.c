
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int ** lut_v10; int ** lut_u10; } ;
typedef TYPE_1__ HueContext ;


 int av_clip_uintp2 (int ,int) ;

__attribute__((used)) static void apply_lut10(HueContext *s,
                      uint16_t *udst, uint16_t *vdst, const int dst_linesize,
                      uint16_t *usrc, uint16_t *vsrc, const int src_linesize,
                      int w, int h)
{
    int i;

    while (h--) {
        for (i = 0; i < w; i++) {
            const int u = av_clip_uintp2(usrc[i], 10);
            const int v = av_clip_uintp2(vsrc[i], 10);

            udst[i] = s->lut_u10[u][v];
            vdst[i] = s->lut_v10[u][v];
        }

        usrc += src_linesize;
        vsrc += src_linesize;
        udst += dst_linesize;
        vdst += dst_linesize;
    }
}
