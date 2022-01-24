#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ length; int /*<<< orphan*/  data; TYPE_4__* delayed_buffer; int /*<<< orphan*/  cmd; scalar_t__ port_num; scalar_t__ port_type; int /*<<< orphan*/ * client_component; } ;
typedef  TYPE_2__ mmal_worker_event_to_host ;
typedef  scalar_t__ VCHIQ_STATUS_T ;
typedef  int /*<<< orphan*/  VCHIQ_SERVICE_HANDLE_T ;
struct TYPE_16__ {scalar_t__ data; } ;
typedef  TYPE_3__ VCHIQ_HEADER_T ;
struct TYPE_17__ {scalar_t__ alloc_size; int length; int /*<<< orphan*/  data; } ;
struct TYPE_14__ {scalar_t__ magic; int /*<<< orphan*/  (* callback_event ) (int /*<<< orphan*/ *,TYPE_4__*) ;} ;
struct TYPE_13__ {scalar_t__ magic; TYPE_1__* client_context; } ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  int /*<<< orphan*/  MMAL_PORT_T ;
typedef  int /*<<< orphan*/  MMAL_COMPONENT_T ;
typedef  TYPE_4__ MMAL_BUFFER_HEADER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 scalar_t__ MMAL_MAGIC ; 
 scalar_t__ MMAL_SUCCESS ; 
 int MMAL_WORKER_EVENT_SPACE ; 
 scalar_t__ VCHIQ_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_11__* FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,TYPE_4__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static void FUNC12(VCHIQ_HEADER_T *vchiq_header,
                                    VCHIQ_SERVICE_HANDLE_T service,
                                    void *context)
{
   mmal_worker_event_to_host *msg = (mmal_worker_event_to_host *)vchiq_header->data;
   MMAL_COMPONENT_T *component = msg->client_component;
   MMAL_BUFFER_HEADER_T *buffer;
   MMAL_STATUS_T status;
   MMAL_PORT_T *port;

   FUNC0("event to host, cmd 0x%08x len %d to component %p port (%d,%d)",
         msg->cmd, msg->length, msg->client_component, msg->port_type, msg->port_num);
   (void)context;

   port = FUNC7(component, msg->port_type, msg->port_num);
   if (!FUNC11(*port))
   {
      FUNC1("port (%i,%i) doesn't exist", (int)msg->port_type, (int)msg->port_num);
      goto error;
   }

   status = FUNC6(port, &buffer, msg->cmd);
   if (status != MMAL_SUCCESS)
   {
      FUNC1("no event buffer available to receive event (%i)", (int)status);
      goto error;
   }

   if (!FUNC11(msg->length <= buffer->alloc_size))
   {
      FUNC1("event buffer to small to receive event (%i/%i)",
                (int)buffer->alloc_size, (int)msg->length);
      goto error;
   }
   buffer->length = msg->length;

   /* Sanity check that the event buffers have the proper vc client context */
   if (!FUNC11(FUNC4(buffer)->magic == MMAL_MAGIC &&
          FUNC4(buffer)->client_context &&
          FUNC4(buffer)->client_context->magic == MMAL_MAGIC &&
          FUNC4(buffer)->client_context->callback_event))
   {
      FUNC1("event buffers not configured properly by component");
      goto error;
   }

   if (buffer->length > MMAL_WORKER_EVENT_SPACE)
   {
      /* a buffer full of data for us to process */
      int len = buffer->length;
      len = (len+3) & (~3);
      FUNC0("queue event bulk rx: %p, %d", buffer->data, buffer->length);
      msg->delayed_buffer = buffer;

      VCHIQ_STATUS_T vst = FUNC9(service, buffer->data, len, vchiq_header);
      if (vst != VCHIQ_SUCCESS)
      {
         FUNC2("queue event bulk rx len %d failed to start", buffer->length);
         FUNC5(buffer);
         goto error;
      }
   }
   else
   {
      if (msg->length)
         FUNC3(buffer->data, msg->data, msg->length);

      FUNC4(buffer)->client_context->callback_event(port, buffer);
      FUNC0("done callback back to client");
      FUNC10(service, vchiq_header);
   }

   return;

error:
   /* FIXME: How to abort bulk receive if necessary? */
   msg->length = 0; /* FIXME: set a buffer flag to signal error */
   FUNC10(service, vchiq_header);
}