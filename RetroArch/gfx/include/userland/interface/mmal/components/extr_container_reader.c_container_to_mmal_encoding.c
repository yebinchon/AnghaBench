
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ VC_CONTAINER_FOURCC_T ;
struct TYPE_2__ {scalar_t__ codec; int encoding; } ;
typedef int MMAL_FOURCC_T ;


 scalar_t__ VC_CONTAINER_CODEC_UNKNOWN ;
 TYPE_1__* encoding_table ;

__attribute__((used)) static MMAL_FOURCC_T container_to_mmal_encoding(VC_CONTAINER_FOURCC_T codec)
{
   unsigned int i;
   for(i = 0; encoding_table[i].codec != VC_CONTAINER_CODEC_UNKNOWN; i++)
      if(encoding_table[i].codec == codec)
         break;
   return encoding_table[i].encoding;
}
