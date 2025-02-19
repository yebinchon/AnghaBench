
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int dsfmt_t ;
struct TYPE_5__ {double width; double height; } ;
typedef TYPE_1__ ccv_size_t ;
typedef int ccv_point_t ;
struct TYPE_6__ {int structs; int features; int scales; int posteriors; float* posterior; int* rnum; scalar_t__ threshold; void** fern; scalar_t__* cnum; } ;
typedef TYPE_2__ ccv_ferns_t ;


 int assert (int) ;
 scalar_t__ ccmalloc (int) ;
 void* ccv_point (int,int) ;
 double dsfmt_genrand_close_open (int *) ;
 int dsfmt_genrand_uint32 (int *) ;
 int dsfmt_init_gen_rand (int *,int ) ;
 double fabs (double) ;
 float logf (double) ;
 int memset (int*,int ,int) ;

ccv_ferns_t* ccv_ferns_new(int structs, int features, int scales, ccv_size_t* sizes)
{
 assert(structs > 0 && features > 0 && scales > 0);
 int posteriors = 1 << features;
 ccv_ferns_t* ferns = (ccv_ferns_t*)ccmalloc(sizeof(ccv_ferns_t) + sizeof(ccv_point_t) * (structs * features * scales * 2 - 1) + sizeof(float) * structs * posteriors * 2 + sizeof(int) * structs * posteriors * 2);
 ferns->structs = structs;
 ferns->features = features;
 ferns->scales = scales;
 ferns->posteriors = posteriors;
 ferns->cnum[0] = ferns->cnum[1] = 0;
 ferns->posterior = (float*)((uint8_t*)(ferns + 1) + sizeof(ccv_point_t) * (structs * features * scales * 2 - 1));

 ferns->rnum = (int*)(ferns->posterior + structs * posteriors * 2);
 memset(ferns->rnum, 0, sizeof(int) * structs * posteriors * 2);
 int i, j, k;
 float log5 = logf(0.5);
 for (i = 0; i < structs * posteriors * 2; i++)
  ferns->posterior[i] = log5;
 dsfmt_t dsfmt;
 dsfmt_init_gen_rand(&dsfmt, (uint32_t)ferns);
 for (i = 0; i < structs; i++)
 {
  for (k = 0; k < features; k++)
  {
   double x1f, y1f, x2f, y2f;

   if (dsfmt_genrand_uint32(&dsfmt) & 0x01)
   {
    do {
     x1f = dsfmt_genrand_close_open(&dsfmt);
     x2f = dsfmt_genrand_close_open(&dsfmt);
     y1f = y2f = dsfmt_genrand_close_open(&dsfmt);
    } while (fabs(x1f - x2f) >= 0.2);
   } else {
    do {
     x1f = x2f = dsfmt_genrand_close_open(&dsfmt);
     y1f = dsfmt_genrand_close_open(&dsfmt);
     y2f = dsfmt_genrand_close_open(&dsfmt);
    } while (fabs(y1f - y2f) >= 0.2);
   }
   for (j = 0; j < scales; j++)
   {
    ferns->fern[(j * structs * features + i * features + k) * 2] = ccv_point((int)(x1f * sizes[j].width), (int)(y1f * sizes[j].height));
    ferns->fern[(j * structs * features + i * features + k) * 2 + 1] = ccv_point((int)(x2f * sizes[j].width), (int)(y2f * sizes[j].height));
   }
  }
 }
 ferns->threshold = 0;
 return ferns;
}
