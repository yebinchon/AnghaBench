
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ encoding; scalar_t__ sliced_encoding; } ;


 scalar_t__ MMAL_ENCODING_UNKNOWN ;
 TYPE_1__* slice_equivalents ;

uint32_t mmal_encoding_get_slice_variant(uint32_t encoding)
{
   unsigned int i;

   for(i = 0; slice_equivalents[i].encoding != MMAL_ENCODING_UNKNOWN; i++)
      if(slice_equivalents[i].encoding == encoding) break;

   return slice_equivalents[i].sliced_encoding;
}
