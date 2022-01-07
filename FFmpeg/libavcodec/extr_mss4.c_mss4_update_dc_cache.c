
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__** prev_dc; scalar_t__** dc_cache; } ;
typedef TYPE_1__ MSS4Context ;


 size_t LEFT ;
 size_t TOP ;

__attribute__((used)) static inline void mss4_update_dc_cache(MSS4Context *c, int mb_x)
{
    int i;

    c->dc_cache[0][TOP] = c->prev_dc[0][mb_x * 2 + 1];
    c->dc_cache[0][LEFT] = 0;
    c->dc_cache[1][TOP] = 0;
    c->dc_cache[1][LEFT] = 0;

    for (i = 0; i < 2; i++)
        c->prev_dc[0][mb_x * 2 + i] = 0;

    for (i = 1; i < 3; i++) {
        c->dc_cache[i + 1][TOP] = c->prev_dc[i][mb_x];
        c->dc_cache[i + 1][LEFT] = 0;
        c->prev_dc[i][mb_x] = 0;
    }
}
