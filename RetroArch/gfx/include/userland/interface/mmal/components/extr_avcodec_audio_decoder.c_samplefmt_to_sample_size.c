
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;
struct TYPE_2__ {scalar_t__ encoding; int samplefmt; unsigned int sample_size; } ;


 scalar_t__ MMAL_ENCODING_UNKNOWN ;
 TYPE_1__* samplefmt_to_encoding_table ;

__attribute__((used)) static unsigned int samplefmt_to_sample_size(enum AVSampleFormat samplefmt)
{
   unsigned int i;
   for(i = 0; samplefmt_to_encoding_table[i].encoding != MMAL_ENCODING_UNKNOWN; i++)
      if(samplefmt_to_encoding_table[i].samplefmt == samplefmt) break;
   return samplefmt_to_encoding_table[i].sample_size;
}
