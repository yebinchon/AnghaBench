
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int n_difchan; int difseg_size; } ;
struct TYPE_10__ {TYPE_1__* work_chunks; } ;
struct TYPE_9__ {int buf_offset; int * mb_coordinates; } ;
typedef TYPE_2__ DVVideoContext ;
typedef TYPE_3__ AVDVProfile ;


 scalar_t__ DV_PROFILE_IS_1080i50 (TYPE_3__ const*) ;
 scalar_t__ DV_PROFILE_IS_720p50 (TYPE_3__ const*) ;
 int dv_calc_mb_coordinates (TYPE_3__ const*,int,int,int,int *) ;

int ff_dv_init_dynamic_tables(DVVideoContext *ctx, const AVDVProfile *d)
{
    int j, i, c, s, p;

    p = i = 0;
    for (c = 0; c < d->n_difchan; c++) {
        for (s = 0; s < d->difseg_size; s++) {
            p += 6;
            for (j = 0; j < 27; j++) {
                p += !(j % 3);
                if (!(DV_PROFILE_IS_1080i50(d) && c != 0 && s == 11) &&
                    !(DV_PROFILE_IS_720p50(d) && s > 9)) {
                    dv_calc_mb_coordinates(d, c, s, j, &ctx->work_chunks[i].mb_coordinates[0]);
                    ctx->work_chunks[i++].buf_offset = p;
                }
                p += 5;
            }
        }
    }

    return 0;
}
