
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ VC_CONTAINER_FOURCC_T ;
struct TYPE_2__ {scalar_t__ codec; int fourcc; } ;


 scalar_t__ VC_CONTAINER_CODEC_UNKNOWN ;
 TYPE_1__* codec_to_vfw_table ;

uint32_t codec_to_vfw_fourcc(VC_CONTAINER_FOURCC_T codec)
{
   unsigned int i;
   for(i = 0; codec_to_vfw_table[i].codec != VC_CONTAINER_CODEC_UNKNOWN; i++)
      if(codec_to_vfw_table[i].codec == codec) break;

   return codec_to_vfw_table[i].fourcc;
}
