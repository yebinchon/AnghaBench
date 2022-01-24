#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {scalar_t__ buffer_num; } ;
struct TYPE_18__ {size_t ports_num; TYPE_2__* ports; } ;
struct TYPE_17__ {unsigned int buffers; int actions; int buffers_allocated; TYPE_8__* mmal; int /*<<< orphan*/  zero_copy; int /*<<< orphan*/  populated; } ;
struct TYPE_16__ {int /*<<< orphan*/  pPlatformPrivate; } ;
typedef  size_t OMX_U32 ;
typedef  scalar_t__ OMX_HANDLETYPE ;
typedef  int /*<<< orphan*/  OMX_ERRORTYPE ;
typedef  TYPE_1__ OMX_BUFFERHEADERTYPE ;
typedef  int MMAL_BOOL_T ;
typedef  TYPE_2__ MMALOMX_PORT_T ;
typedef  TYPE_3__ MMALOMX_COMPONENT_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,int,TYPE_1__*) ; 
 int MMALOMX_ACTION_CHECK_DEALLOCATED ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  MMAL_FALSE ; 
 int /*<<< orphan*/  MMAL_PARAMETER_ZERO_COPY ; 
 int /*<<< orphan*/  OMX_ErrorBadParameter ; 
 int /*<<< orphan*/  OMX_ErrorBadPortIndex ; 
 int /*<<< orphan*/  OMX_ErrorInvalidComponent ; 
 int /*<<< orphan*/  OMX_ErrorNone ; 
 int /*<<< orphan*/  OMX_ErrorPortUnpopulated ; 
 int /*<<< orphan*/  OMX_EventError ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 

__attribute__((used)) static OMX_ERRORTYPE FUNC10(
   OMX_HANDLETYPE hComponent,
   OMX_U32 nPortIndex,
   OMX_BUFFERHEADERTYPE* pBuffer)
{
   MMALOMX_COMPONENT_T *component = (MMALOMX_COMPONENT_T *)hComponent;
   OMX_ERRORTYPE status = OMX_ErrorNone;
   MMAL_BOOL_T unpopulated, allocated;
   MMALOMX_PORT_T *port;
   unsigned int buffers;

   FUNC1("hComponent %p, nPortIndex %i, pBuffer %p",
             hComponent, (int)nPortIndex, pBuffer);

   /* Sanity checks */
   if (!hComponent)
      return OMX_ErrorInvalidComponent;
   if (!pBuffer)
      return OMX_ErrorBadParameter;
   if (nPortIndex >= component->ports_num)
      return OMX_ErrorBadPortIndex;

   /* Make sure any previous command has been processed.
   * This is not ideal since done inline but in practice the actual
   * notification to the client will not be done as part of this call. */
   FUNC8(component);

   port = &component->ports[nPortIndex];
   FUNC2(component, port);

   if (!port->buffers)
   {
      status = OMX_ErrorBadParameter;
      goto error;
   }

   buffers = --port->buffers;
   port->populated = MMAL_FALSE;
   unpopulated = !(port->actions & MMALOMX_ACTION_CHECK_DEALLOCATED);
   allocated = port->buffers_allocated;

   FUNC3(component, port);

   if (allocated) /* Free the unmodified pointer */
      FUNC6(port->mmal, pBuffer->pPlatformPrivate);
   FUNC4(pBuffer);

   if (allocated && !port->zero_copy) /* Reset the zero-copy status */
      FUNC5(port->mmal, MMAL_PARAMETER_ZERO_COPY, MMAL_FALSE);

   FUNC0("freed %i/%i buffers", port->mmal->buffer_num - port->buffers, port->mmal->buffer_num);

   if (unpopulated)
      FUNC7(component, OMX_EventError, OMX_ErrorPortUnpopulated, 0, NULL);

   if (!buffers)
      FUNC9(component);

   return OMX_ErrorNone;

error:
   FUNC3(component, port);
   return status;
}