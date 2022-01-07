
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int* region_size; } ;
struct TYPE_5__ {size_t sample_rate_index; } ;
typedef TYPE_1__ MPADecodeContext ;
typedef TYPE_2__ GranuleDef ;


 int FFMIN (int,int) ;
 int** band_index_long ;

__attribute__((used)) static void init_long_region(MPADecodeContext *s, GranuleDef *g,
                             int ra1, int ra2)
{
    int l;
    g->region_size[0] = band_index_long[s->sample_rate_index][ra1 + 1] >> 1;

    l = FFMIN(ra1 + ra2 + 2, 22);
    g->region_size[1] = band_index_long[s->sample_rate_index][ l] >> 1;
}
