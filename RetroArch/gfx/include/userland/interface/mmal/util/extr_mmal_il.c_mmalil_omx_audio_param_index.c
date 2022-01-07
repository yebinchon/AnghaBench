
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ coding; int index; int size; } ;
typedef int OMX_U32 ;
typedef int OMX_INDEXTYPE ;
typedef scalar_t__ OMX_AUDIO_CODINGTYPE ;


 scalar_t__ OMX_AUDIO_CodingUnused ;
 TYPE_1__* mmal_omx_audio_format_table ;

OMX_INDEXTYPE mmalil_omx_audio_param_index(OMX_AUDIO_CODINGTYPE coding, OMX_U32 *size)
{
   unsigned int i;
   for(i = 0; mmal_omx_audio_format_table[i].coding != OMX_AUDIO_CodingUnused; i++)
      if(mmal_omx_audio_format_table[i].coding == coding) break;

   if(size) *size = mmal_omx_audio_format_table[i].size;
   return mmal_omx_audio_format_table[i].index;
}
