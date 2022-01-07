
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int VC_CONTAINER_FOURCC_T ;
struct TYPE_2__ {scalar_t__ codec; scalar_t__ encoding; scalar_t__ encoding_variant; int codec_variant; } ;
typedef scalar_t__ MMAL_FOURCC_T ;


 scalar_t__ VC_CONTAINER_CODEC_UNKNOWN ;
 TYPE_1__* encoding_table ;

__attribute__((used)) static VC_CONTAINER_FOURCC_T mmal_to_container_variant(MMAL_FOURCC_T encoding,
   MMAL_FOURCC_T encoding_variant)
{
   unsigned int i;
   for(i = 0; encoding_table[i].codec != VC_CONTAINER_CODEC_UNKNOWN; i++)
      if(encoding_table[i].encoding == encoding &&
         encoding_table[i].encoding_variant == encoding_variant)
         break;
   return encoding_table[i].codec_variant;
}
