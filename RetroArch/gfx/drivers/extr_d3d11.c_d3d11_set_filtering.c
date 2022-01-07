
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ** samplers; } ;
typedef TYPE_1__ d3d11_video_t ;


 size_t RARCH_FILTER_LINEAR ;
 size_t RARCH_FILTER_NEAREST ;
 size_t RARCH_FILTER_UNSPEC ;
 unsigned int RARCH_WRAP_MAX ;

__attribute__((used)) static void d3d11_set_filtering(void* data, unsigned index, bool smooth)
{
   unsigned i;
   d3d11_video_t* d3d11 = (d3d11_video_t*)data;

   for (i = 0; i < RARCH_WRAP_MAX; i++)
   {
      if (smooth)
         d3d11->samplers[RARCH_FILTER_UNSPEC][i] = d3d11->samplers[RARCH_FILTER_LINEAR][i];
      else
         d3d11->samplers[RARCH_FILTER_UNSPEC][i] = d3d11->samplers[RARCH_FILTER_NEAREST][i];
   }
}
