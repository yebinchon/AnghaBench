#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int length; int flags; int /*<<< orphan*/  data; } ;
struct TYPE_17__ {scalar_t__ is_enabled; scalar_t__ userdata; } ;
struct TYPE_16__ {int /*<<< orphan*/  complete_semaphore; TYPE_2__* pstate; scalar_t__ file_handle; } ;
struct TYPE_15__ {TYPE_1__* encoder_pool; } ;
struct TYPE_14__ {int /*<<< orphan*/  queue; } ;
typedef  TYPE_3__ PORT_USERDATA ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  TYPE_4__ MMAL_PORT_T ;
typedef  TYPE_5__ MMAL_BUFFER_HEADER_T ;

/* Variables and functions */
 int MMAL_BUFFER_HEADER_FLAG_FRAME_END ; 
 int MMAL_BUFFER_HEADER_FLAG_TRANSMISSION_FAILED ; 
 scalar_t__ MMAL_SUCCESS ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 scalar_t__ FUNC4 (TYPE_4__*,TYPE_5__*) ; 
 TYPE_5__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(MMAL_PORT_T *port, MMAL_BUFFER_HEADER_T *buffer)
{
   int complete = 0;

   // We pass our file handle and other stuff in via the userdata field.

   PORT_USERDATA *pData = (PORT_USERDATA *)port->userdata;

   if (pData)
   {
      int bytes_written = buffer->length;

      if (buffer->length && pData->file_handle)
      {
         FUNC1(buffer);

         bytes_written = FUNC0(buffer->data, 1, buffer->length, pData->file_handle);

         FUNC2(buffer);
      }

      // We need to check we wrote what we wanted - it's possible we have run out of storage.
      if (bytes_written != buffer->length)
      {
         FUNC6("Unable to write buffer to file - aborting");
         complete = 1;
      }

      // Now flag if we have completed
      if (buffer->flags & (MMAL_BUFFER_HEADER_FLAG_FRAME_END | MMAL_BUFFER_HEADER_FLAG_TRANSMISSION_FAILED))
         complete = 1;
   }
   else
   {
      FUNC6("Received a encoder buffer callback with no state");
   }

   // release buffer back to the pool
   FUNC3(buffer);

   // and send one back to the port (if still open)
   if (port->is_enabled)
   {
      MMAL_STATUS_T status = MMAL_SUCCESS;
      MMAL_BUFFER_HEADER_T *new_buffer;

      new_buffer = FUNC5(pData->pstate->encoder_pool->queue);

      if (new_buffer)
      {
         status = FUNC4(port, new_buffer);
      }
      if (!new_buffer || status != MMAL_SUCCESS)
         FUNC6("Unable to return a buffer to the encoder port");
   }

   if (complete)
      FUNC7(&(pData->complete_semaphore));
}