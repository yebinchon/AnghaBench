
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef double uint8_t ;
struct TYPE_6__ {int block_size; } ;
struct TYPE_5__ {int y; int x; } ;
typedef TYPE_1__ PosCode ;
typedef TYPE_2__ BM3DContext ;



__attribute__((used)) static double do_block_ssd(BM3DContext *s, PosCode *pos, const uint8_t *src, int src_stride, int r_y, int r_x)
{
    const uint8_t *srcp = src + pos->y * src_stride + pos->x;
    const uint8_t *refp = src + r_y * src_stride + r_x;
    const int block_size = s->block_size;
    double dist = 0.;
    int x, y;

    for (y = 0; y < block_size; y++) {
        for (x = 0; x < block_size; x++) {
            double temp = refp[x] - srcp[x];
            dist += temp * temp;
        }

        srcp += src_stride;
        refp += src_stride;
    }

    return dist;
}
