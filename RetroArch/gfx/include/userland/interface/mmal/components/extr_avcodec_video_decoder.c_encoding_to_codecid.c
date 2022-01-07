
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ encoding; scalar_t__ codecid; } ;


 scalar_t__ MMAL_ENCODING_UNKNOWN ;
 TYPE_1__* codec_to_encoding_table ;

__attribute__((used)) static uint32_t encoding_to_codecid(uint32_t encoding)
{
   unsigned int i;
   for(i = 0; codec_to_encoding_table[i].encoding != MMAL_ENCODING_UNKNOWN; i++)
      if(codec_to_encoding_table[i].encoding == encoding) break;
   return codec_to_encoding_table[i].codecid;
}
