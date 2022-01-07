
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int** lut_u; int** lut_v; } ;
typedef TYPE_1__ HueContext ;



__attribute__((used)) static void apply_lut(HueContext *s,
                      uint8_t *udst, uint8_t *vdst, const int dst_linesize,
                      uint8_t *usrc, uint8_t *vsrc, const int src_linesize,
                      int w, int h)
{
    int i;

    while (h--) {
        for (i = 0; i < w; i++) {
            const int u = usrc[i];
            const int v = vsrc[i];

            udst[i] = s->lut_u[u][v];
            vdst[i] = s->lut_v[u][v];
        }

        usrc += src_linesize;
        vsrc += src_linesize;
        udst += dst_linesize;
        vdst += dst_linesize;
    }
}
