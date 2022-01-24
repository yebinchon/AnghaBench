#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ pts; scalar_t__ dts; int /*<<< orphan*/  flags; int /*<<< orphan*/  offset; int /*<<< orphan*/  length; int /*<<< orphan*/  alloc_size; int /*<<< orphan*/  data; } ;
struct TYPE_5__ {int /*<<< orphan*/  nFlags; void* nTimeStamp; int /*<<< orphan*/  nOffset; int /*<<< orphan*/  nFilledLen; int /*<<< orphan*/  nAllocLen; int /*<<< orphan*/  pBuffer; } ;
typedef  TYPE_1__ OMX_BUFFERHEADERTYPE ;
typedef  TYPE_2__ MMAL_BUFFER_HEADER_T ;

/* Variables and functions */
 scalar_t__ MMAL_TIME_UNKNOWN ; 
 int /*<<< orphan*/  OMX_BUFFERFLAG_TIME_IS_DTS ; 
 int /*<<< orphan*/  OMX_BUFFERFLAG_TIME_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (scalar_t__) ; 

void FUNC2(OMX_BUFFERHEADERTYPE *omx, MMAL_BUFFER_HEADER_T *mmal)
{
   omx->pBuffer = mmal->data;
   omx->nAllocLen = mmal->alloc_size;
   omx->nFilledLen = mmal->length;
   omx->nOffset = mmal->offset;
   omx->nFlags = FUNC0(mmal->flags);
   omx->nTimeStamp = FUNC1(mmal->pts);
   if (mmal->pts == MMAL_TIME_UNKNOWN)
   {
      if (mmal->dts == MMAL_TIME_UNKNOWN)
      {
         omx->nTimeStamp = FUNC1(0);
         omx->nFlags |= OMX_BUFFERFLAG_TIME_UNKNOWN;
      }
      else
      {
        omx->nTimeStamp = FUNC1(mmal->dts);
        omx->nFlags |= OMX_BUFFERFLAG_TIME_IS_DTS;
      }
   }
}