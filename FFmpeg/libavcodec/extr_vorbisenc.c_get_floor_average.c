
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ values; TYPE_1__* list; } ;
typedef TYPE_2__ vorbis_enc_floor ;
struct TYPE_4__ {size_t sort; int x; } ;


 size_t FFMAX (int,int ) ;
 size_t FFMIN (int,scalar_t__) ;
 scalar_t__ fabs (float) ;

__attribute__((used)) static float get_floor_average(vorbis_enc_floor * fc, float *coeffs, int i)
{
    int begin = fc->list[fc->list[FFMAX(i-1, 0)].sort].x;
    int end = fc->list[fc->list[FFMIN(i+1, fc->values - 1)].sort].x;
    int j;
    float average = 0;

    for (j = begin; j < end; j++)
        average += fabs(coeffs[j]);
    return average / (end - begin);
}
