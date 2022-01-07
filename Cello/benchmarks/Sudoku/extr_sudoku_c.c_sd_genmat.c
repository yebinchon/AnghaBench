
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int** c; int** r; } ;
typedef TYPE_1__ sdaux_t ;
typedef scalar_t__ int8_t ;


 TYPE_1__* calloc (int,int) ;

sdaux_t *sd_genmat()
{
 sdaux_t *a;
 int i, j, k, r, c, c2, r2;
 int8_t nr[324];
 a = calloc(1, sizeof(sdaux_t));
 for (i = r = 0; i < 9; ++i)
  for (j = 0; j < 9; ++j)
   for (k = 0; k < 9; ++k)
    a->c[r][0] = 9 * i + j,
    a->c[r][1] = (i/3*3 + j/3) * 9 + k + 81,
    a->c[r][2] = 9 * i + k + 162,
    a->c[r][3] = 9 * j + k + 243,
    ++r;
 for (c = 0; c < 324; ++c) nr[c] = 0;
 for (r = 0; r < 729; ++r)
  for (c2 = 0; c2 < 4; ++c2)
   k = a->c[r][c2], a->r[k][nr[k]++] = r;
 return a;
}
