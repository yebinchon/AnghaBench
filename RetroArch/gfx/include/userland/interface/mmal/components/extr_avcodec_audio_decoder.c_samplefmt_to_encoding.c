
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;
struct TYPE_2__ {scalar_t__ encoding; int samplefmt; } ;


 scalar_t__ MMAL_ENCODING_UNKNOWN ;
 TYPE_1__* samplefmt_to_encoding_table ;

__attribute__((used)) static uint32_t samplefmt_to_encoding(enum AVSampleFormat samplefmt)
{
   unsigned int i;
   for(i = 0; samplefmt_to_encoding_table[i].encoding != MMAL_ENCODING_UNKNOWN; i++)
      if(samplefmt_to_encoding_table[i].samplefmt == samplefmt) break;
   return samplefmt_to_encoding_table[i].encoding;
}
