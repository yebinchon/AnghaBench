
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ encoding; scalar_t__ coding; } ;
typedef scalar_t__ OMX_IMAGE_CODINGTYPE ;


 scalar_t__ MMAL_ENCODING_UNKNOWN ;
 TYPE_1__* mmal_omx_image_coding_table ;

uint32_t mmalil_omx_image_coding_to_encoding(OMX_IMAGE_CODINGTYPE coding)
{
   unsigned int i;
   for(i = 0; mmal_omx_image_coding_table[i].encoding != MMAL_ENCODING_UNKNOWN; i++)
      if(mmal_omx_image_coding_table[i].coding == coding) break;
   return mmal_omx_image_coding_table[i].encoding;
}
