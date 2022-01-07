
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int OMX_U32 ;


 int MMAL_BUFFER_HEADER_VIDEO_FLAG_INTERLACED ;
 int MMAL_BUFFER_HEADER_VIDEO_FLAG_TOP_FIELD_FIRST ;
 int OMX_BUFFERFLAG_INTERLACED ;
 int OMX_BUFFERFLAG_TOP_FIELD_FIRST ;

OMX_U32 mmalil_video_buffer_flags_to_omx(uint32_t flags)
{
   OMX_U32 omx_flags = 0;

   if (flags & MMAL_BUFFER_HEADER_VIDEO_FLAG_INTERLACED)
      omx_flags |= OMX_BUFFERFLAG_INTERLACED;
   if (flags & MMAL_BUFFER_HEADER_VIDEO_FLAG_TOP_FIELD_FIRST)
     omx_flags |= OMX_BUFFERFLAG_TOP_FIELD_FIRST;

  return omx_flags;
}
