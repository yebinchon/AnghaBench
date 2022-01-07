
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int flags; void* pts; void* dts; int offset; int length; int alloc_size; int data; scalar_t__ cmd; } ;
struct TYPE_5__ {int nFlags; int nTimeStamp; int nOffset; int nFilledLen; int nAllocLen; int pBuffer; } ;
typedef TYPE_1__ OMX_BUFFERHEADERTYPE ;
typedef TYPE_2__ MMAL_BUFFER_HEADER_T ;


 void* MMAL_TIME_UNKNOWN ;
 int OMX_BUFFERFLAG_TIME_IS_DTS ;
 int OMX_BUFFERFLAG_TIME_UNKNOWN ;
 int mmalil_buffer_flags_to_mmal (int) ;
 void* omx_ticks_to_s64 (int ) ;

void mmalil_buffer_header_to_mmal(MMAL_BUFFER_HEADER_T *mmal, OMX_BUFFERHEADERTYPE *omx)
{
   mmal->cmd = 0;
   mmal->data = omx->pBuffer;
   mmal->alloc_size = omx->nAllocLen;
   mmal->length = omx->nFilledLen;
   mmal->offset = omx->nOffset;
   if (omx->nFlags & OMX_BUFFERFLAG_TIME_IS_DTS)
   {
     mmal->dts = omx_ticks_to_s64(omx->nTimeStamp);
     mmal->pts = MMAL_TIME_UNKNOWN;
   }
   else if (omx->nFlags & OMX_BUFFERFLAG_TIME_UNKNOWN)
   {
     mmal->dts = MMAL_TIME_UNKNOWN;
     mmal->pts = MMAL_TIME_UNKNOWN;
   }
   else
   {
     mmal->dts = MMAL_TIME_UNKNOWN;
     mmal->pts = omx_ticks_to_s64(omx->nTimeStamp);
   }
   mmal->flags = mmalil_buffer_flags_to_mmal(omx->nFlags);
}
