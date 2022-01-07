
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int main_buffer; } ;
typedef TYPE_1__ rarch_sinc_resampler_t ;


 int free (TYPE_1__*) ;
 int memalign_free (int ) ;

__attribute__((used)) static void resampler_sinc_free(void *data)
{
   rarch_sinc_resampler_t *resamp = (rarch_sinc_resampler_t*)data;
   if (resamp)
      memalign_free(resamp->main_buffer);
   free(resamp);
}
