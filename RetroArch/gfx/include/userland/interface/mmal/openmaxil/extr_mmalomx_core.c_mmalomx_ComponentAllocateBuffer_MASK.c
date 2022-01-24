#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {size_t buffer_size_min; size_t buffer_size; int buffer_num; int /*<<< orphan*/  name; } ;
struct TYPE_20__ {scalar_t__ state; size_t ports_num; TYPE_3__* ports; } ;
struct TYPE_19__ {int actions; int populated; int buffers; scalar_t__ direction; TYPE_8__* mmal; int /*<<< orphan*/  zero_copy; void* buffers_allocated; } ;
struct TYPE_17__ {int /*<<< orphan*/  nVersion; } ;
struct TYPE_18__ {int nSize; size_t nAllocLen; size_t nInputPortIndex; size_t nOutputPortIndex; scalar_t__ pBuffer; void* pPlatformPrivate; void* pInputPortPrivate; void* pOutputPortPrivate; void* pAppPrivate; TYPE_1__ nVersion; } ;
typedef  size_t OMX_U32 ;
typedef  void* OMX_PTR ;
typedef  scalar_t__ OMX_HANDLETYPE ;
typedef  scalar_t__ OMX_ERRORTYPE ;
typedef  TYPE_2__ OMX_BUFFERHEADERTYPE ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  int MMAL_BOOL_T ;
typedef  TYPE_3__ MMALOMX_PORT_T ;
typedef  TYPE_4__ MMALOMX_COMPONENT_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,TYPE_2__**,int,void*,int) ; 
 int MMALOMX_ACTION_CHECK_ALLOCATED ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,TYPE_3__*) ; 
 size_t MMALOMX_ZERO_COPY_THRESHOLD ; 
 scalar_t__ MMAL_ENOSYS ; 
 void* MMAL_FALSE ; 
 int /*<<< orphan*/  MMAL_PARAMETER_ZERO_COPY ; 
 scalar_t__ MMAL_SUCCESS ; 
 void* MMAL_TRUE ; 
 scalar_t__ OMX_DirInput ; 
 scalar_t__ OMX_ErrorBadParameter ; 
 scalar_t__ OMX_ErrorBadPortIndex ; 
 scalar_t__ OMX_ErrorIncorrectStateOperation ; 
 scalar_t__ OMX_ErrorInsufficientResources ; 
 scalar_t__ OMX_ErrorInvalidComponent ; 
 scalar_t__ OMX_ErrorInvalidState ; 
 scalar_t__ OMX_ErrorNone ; 
 scalar_t__ OMX_StateInvalid ; 
 int /*<<< orphan*/  OMX_VERSION ; 
 TYPE_2__* FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (TYPE_8__*,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC8 (TYPE_8__*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 

__attribute__((used)) static OMX_ERRORTYPE FUNC11(
   OMX_HANDLETYPE hComponent,
   OMX_BUFFERHEADERTYPE** ppBuffer,
   OMX_U32 nPortIndex,
   OMX_PTR pAppPrivate,
   OMX_U32 nSizeBytes)
{
   MMALOMX_COMPONENT_T *component = (MMALOMX_COMPONENT_T *)hComponent;
   OMX_ERRORTYPE status = OMX_ErrorNone;
   MMAL_BOOL_T populated = MMAL_FALSE;
   OMX_BUFFERHEADERTYPE *buffer = 0;
   MMALOMX_PORT_T *port;

   FUNC2("hComponent %p, ppBuffer %p, nPortIndex %i, pAppPrivate %p, "
             "nSizeBytes %i", hComponent, ppBuffer, (int)nPortIndex,
             pAppPrivate, (int)nSizeBytes);

   /* Sanity checks */
   if (!hComponent)
      return OMX_ErrorInvalidComponent;
   if (!ppBuffer)
      return OMX_ErrorBadParameter;
   if (component->state == OMX_StateInvalid)
      return OMX_ErrorInvalidState;
   if (nPortIndex >= component->ports_num)
      return OMX_ErrorBadPortIndex;

   /* Make sure any previous command has been processed.
   * This is not ideal since done inline but in practice the actual
   * notification to the client will not be done as part of this call. */
   FUNC9(component);

   port = &component->ports[nPortIndex];
   FUNC3(component, port);

   if (!(port->actions & MMALOMX_ACTION_CHECK_ALLOCATED))
      status = OMX_ErrorIncorrectStateOperation;
   if (port->populated)
      status = OMX_ErrorIncorrectStateOperation;
   if (status != OMX_ErrorNone)
      goto error;

   /* Check for mismatched calls to UseBuffer/AllocateBuffer */
   if (!status && port->buffers && !port->buffers_allocated)
   {
      status = OMX_ErrorBadParameter;
      goto error;
   }

   /* Sanity check buffer size */
   if (nSizeBytes < port->mmal->buffer_size_min)
   {
      FUNC1("buffer size too small (%i/%i)", (int)nSizeBytes,
                (int)port->mmal->buffer_size_min);
      status = OMX_ErrorBadParameter;
      goto error;
   }
   if (!port->buffers)
      port->mmal->buffer_size = nSizeBytes;
   if (nSizeBytes > port->mmal->buffer_size)
   {
      FUNC1("buffer size too big (%i/%i)", (int)nSizeBytes,
                (int)port->mmal->buffer_size);
      status = OMX_ErrorBadParameter;
      goto error;
   }

   /* Set the zero-copy mode */
   if (!port->buffers_allocated && nSizeBytes > MMALOMX_ZERO_COPY_THRESHOLD &&
       !port->zero_copy)
   {
      MMAL_STATUS_T status = FUNC7(port->mmal,
         MMAL_PARAMETER_ZERO_COPY, MMAL_TRUE);
      if (status != MMAL_SUCCESS && status != MMAL_ENOSYS)
         FUNC1("failed to enable zero copy on %s", port->mmal->name);
   }

   buffer = FUNC5( 1, sizeof(*buffer) );
   if (!buffer)
   {
      status = OMX_ErrorInsufficientResources;
      goto error;
   }

   buffer->pBuffer = FUNC8(port->mmal, nSizeBytes);
   if (!buffer->pBuffer)
   {
      status = OMX_ErrorInsufficientResources;
      goto error;
   }

   buffer->nSize = sizeof(*buffer);
   buffer->nVersion.nVersion = OMX_VERSION;
   buffer->nAllocLen = nSizeBytes;
   buffer->pAppPrivate = pAppPrivate;
   if (port->direction == OMX_DirInput)
   {
      buffer->nInputPortIndex = nPortIndex;
      buffer->pOutputPortPrivate = pAppPrivate;
   }
   else
   {
      buffer->nOutputPortIndex = nPortIndex;
      buffer->pInputPortPrivate = pAppPrivate;
   }
   /* Keep an unmodified copy of the pointer for when we come to free it */
   buffer->pPlatformPrivate = (OMX_PTR)buffer->pBuffer;

   *ppBuffer = buffer;
   port->buffers++;
   port->buffers_allocated = MMAL_TRUE;
   port->populated = populated = port->buffers == port->mmal->buffer_num;

   FUNC4(component, port);

   FUNC0("allocated %i/%i buffers", port->buffers, port->mmal->buffer_num);

   if (populated)
      FUNC10(component);

   return OMX_ErrorNone;

error:
   if (!port->buffers_allocated && !port->zero_copy)
      FUNC7(port->mmal, MMAL_PARAMETER_ZERO_COPY, MMAL_FALSE);

   FUNC4(component, port);
   FUNC1("failed to allocate %i/%i buffers", port->buffers, port->mmal->buffer_num);
   if (buffer)
      FUNC6(buffer);
   return status;
}