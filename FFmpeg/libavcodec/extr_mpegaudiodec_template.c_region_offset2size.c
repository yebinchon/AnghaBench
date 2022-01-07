
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* region_size; int big_values; } ;
typedef TYPE_1__ GranuleDef ;


 int FFMIN (int,int ) ;

__attribute__((used)) static void region_offset2size(GranuleDef *g)
{
    int i, k, j = 0;
    g->region_size[2] = 576 / 2;
    for (i = 0; i < 3; i++) {
        k = FFMIN(g->region_size[i], g->big_values);
        g->region_size[i] = k - j;
        j = k;
    }
}
