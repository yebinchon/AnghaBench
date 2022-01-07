
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int* buf; TYPE_1__* sys; } ;
struct TYPE_7__ {int* mb_coordinates; } ;
struct TYPE_6__ {int height; } ;
typedef TYPE_2__ DVwork_chunk ;
typedef TYPE_3__ DVVideoContext ;



__attribute__((used)) static inline void dv_calculate_mb_xy(DVVideoContext *s,
                                      DVwork_chunk *work_chunk,
                                      int m, int *mb_x, int *mb_y)
{
    *mb_x = work_chunk->mb_coordinates[m] & 0xff;
    *mb_y = work_chunk->mb_coordinates[m] >> 8;



    if (s->sys->height == 720 && !(s->buf[1] & 0x0C))

        *mb_y -= (*mb_y > 17) ? 18 : -72;
}
