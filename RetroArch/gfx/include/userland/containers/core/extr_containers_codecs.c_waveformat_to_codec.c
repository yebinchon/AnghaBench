
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
typedef scalar_t__ VC_CONTAINER_FOURCC_T ;
struct TYPE_2__ {scalar_t__ codec; scalar_t__ id; } ;


 scalar_t__ VC_CONTAINER_CODEC_UNKNOWN ;
 TYPE_1__* codec_to_wf_table ;

VC_CONTAINER_FOURCC_T waveformat_to_codec(uint16_t waveformat_id)
{
   unsigned int i;
   for(i = 0; codec_to_wf_table[i].codec != VC_CONTAINER_CODEC_UNKNOWN; i++)
      if(codec_to_wf_table[i].id == waveformat_id) break;
   return codec_to_wf_table[i].codec;
}
