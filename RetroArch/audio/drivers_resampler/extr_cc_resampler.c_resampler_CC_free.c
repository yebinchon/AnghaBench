
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rarch_CC_resampler_t ;


 int memalign_free (int *) ;

__attribute__((used)) static void resampler_CC_free(void *re_)
{

   rarch_CC_resampler_t *re = (rarch_CC_resampler_t*)re_;
   if (re)
      memalign_free(re);

   (void)re_;
}
