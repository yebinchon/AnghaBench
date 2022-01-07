
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int video_smooth; } ;
struct TYPE_5__ {TYPE_1__ bools; } ;
typedef TYPE_2__ settings_t ;
typedef int int32_t ;


 int D3D_TEXTURE_FILTER_LINEAR ;
 int D3D_TEXTURE_FILTER_POINT ;



 TYPE_2__* config_get_ptr () ;

int32_t d3d_translate_filter(unsigned type)
{
   switch (type)
   {
      case 128:
         {
            settings_t *settings = config_get_ptr();
            if (!settings->bools.video_smooth)
               break;
         }

      case 130:
         return (int32_t)D3D_TEXTURE_FILTER_LINEAR;
      case 129:
         break;
   }

   return (int32_t)D3D_TEXTURE_FILTER_POINT;
}
