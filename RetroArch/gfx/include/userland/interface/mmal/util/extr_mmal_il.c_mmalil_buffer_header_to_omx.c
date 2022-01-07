
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ pts; scalar_t__ dts; int flags; int offset; int length; int alloc_size; int data; } ;
struct TYPE_5__ {int nFlags; void* nTimeStamp; int nOffset; int nFilledLen; int nAllocLen; int pBuffer; } ;
typedef TYPE_1__ OMX_BUFFERHEADERTYPE ;
typedef TYPE_2__ MMAL_BUFFER_HEADER_T ;


 scalar_t__ MMAL_TIME_UNKNOWN ;
 int OMX_BUFFERFLAG_TIME_IS_DTS ;
 int OMX_BUFFERFLAG_TIME_UNKNOWN ;
 int mmalil_buffer_flags_to_omx (int ) ;
 void* omx_ticks_from_s64 (scalar_t__) ;

void mmalil_buffer_header_to_omx(OMX_BUFFERHEADERTYPE *omx, MMAL_BUFFER_HEADER_T *mmal)
{
   omx->pBuffer = mmal->data;
   omx->nAllocLen = mmal->alloc_size;
   omx->nFilledLen = mmal->length;
   omx->nOffset = mmal->offset;
   omx->nFlags = mmalil_buffer_flags_to_omx(mmal->flags);
   omx->nTimeStamp = omx_ticks_from_s64(mmal->pts);
   if (mmal->pts == MMAL_TIME_UNKNOWN)
   {
      if (mmal->dts == MMAL_TIME_UNKNOWN)
      {
         omx->nTimeStamp = omx_ticks_from_s64(0);
         omx->nFlags |= OMX_BUFFERFLAG_TIME_UNKNOWN;
      }
      else
      {
        omx->nTimeStamp = omx_ticks_from_s64(mmal->dts);
        omx->nFlags |= OMX_BUFFERFLAG_TIME_IS_DTS;
      }
   }
}
