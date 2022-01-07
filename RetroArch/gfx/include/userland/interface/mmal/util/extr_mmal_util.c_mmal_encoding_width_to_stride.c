
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ encoding; scalar_t__ pitch_num; scalar_t__ pitch_den; int alignment; } ;


 scalar_t__ MMAL_ENCODING_UNKNOWN ;
 scalar_t__ VCOS_ALIGN_UP (scalar_t__,int ) ;
 TYPE_1__* pixel_pitch ;

uint32_t mmal_encoding_width_to_stride(uint32_t encoding, uint32_t width)
{
   unsigned int i;

   for(i = 0; pixel_pitch[i].encoding != MMAL_ENCODING_UNKNOWN; i++)
      if(pixel_pitch[i].encoding == encoding) break;

   if(pixel_pitch[i].encoding == MMAL_ENCODING_UNKNOWN)
      return 0;

   return VCOS_ALIGN_UP(pixel_pitch[i].pitch_num * width / pixel_pitch[i].pitch_den, pixel_pitch[i].alignment);
}
