
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

uint32_t mmalil_video_buffer_flags_to_mmal(OMX_U32 flags)
{
   uint32_t mmal_flags = 0;

   if (flags & OMX_BUFFERFLAG_INTERLACED)
      mmal_flags |= MMAL_BUFFER_HEADER_VIDEO_FLAG_INTERLACED;
   if (flags & OMX_BUFFERFLAG_TOP_FIELD_FIRST)
      mmal_flags |= MMAL_BUFFER_HEADER_VIDEO_FLAG_TOP_FIELD_FIRST;

   return mmal_flags;
}
