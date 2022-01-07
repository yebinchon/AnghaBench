
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resampler_data {int dummy; } ;
struct TYPE_2__ {int (* process ) (void*,struct resampler_data*) ;} ;
typedef TYPE_1__ rarch_CC_resampler_t ;


 int stub1 (void*,struct resampler_data*) ;

__attribute__((used)) static void resampler_CC_process(void *re_, struct resampler_data *data)
{
   rarch_CC_resampler_t *re = (rarch_CC_resampler_t*)re_;
   if (re)
      re->process(re_, data);
}
