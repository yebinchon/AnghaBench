
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {float beta; int count; int* channel; float* alpha; TYPE_1__* sat; } ;
typedef TYPE_2__ ccv_icf_feature_t ;
struct TYPE_4__ {int x; int y; } ;



__attribute__((used)) static inline float _ccv_icf_run_feature(ccv_icf_feature_t* feature, float* ptr, int cols, int ch, int x, int y)
{
 float c = feature->beta;
 int q;
 for (q = 0; q < feature->count; q++)
  c += (ptr[(feature->sat[q * 2 + 1].x + x + 1 + (feature->sat[q * 2 + 1].y + y + 1) * cols) * ch + feature->channel[q]] - ptr[(feature->sat[q * 2].x + x + (feature->sat[q * 2 + 1].y + y + 1) * cols) * ch + feature->channel[q]] + ptr[(feature->sat[q * 2].x + x + (feature->sat[q * 2].y + y) * cols) * ch + feature->channel[q]] - ptr[(feature->sat[q * 2 + 1].x + x + 1 + (feature->sat[q * 2].y + y) * cols) * ch + feature->channel[q]]) * feature->alpha[q];
 return c;
}
