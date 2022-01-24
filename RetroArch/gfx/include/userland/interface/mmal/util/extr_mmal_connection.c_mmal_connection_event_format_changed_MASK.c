#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int capabilities; scalar_t__ buffer_size; scalar_t__ buffer_num; int /*<<< orphan*/  name; int /*<<< orphan*/  format; } ;
struct TYPE_18__ {scalar_t__ cmd; } ;
struct TYPE_17__ {TYPE_4__* in; TYPE_4__* out; int /*<<< orphan*/  name; } ;
struct TYPE_16__ {scalar_t__ buffer_size_min; scalar_t__ buffer_num_min; int /*<<< orphan*/  format; } ;
typedef  int /*<<< orphan*/  MMAL_STATUS_T ;
typedef  TYPE_1__ MMAL_EVENT_FORMAT_CHANGED_T ;
typedef  TYPE_2__ MMAL_CONNECTION_T ;
typedef  TYPE_3__ MMAL_BUFFER_HEADER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MMAL_EINVAL ; 
 scalar_t__ MMAL_EVENT_FORMAT_CHANGED ; 
 int MMAL_PORT_CAPABILITY_SUPPORTS_EVENT_FORMAT_CHANGE ; 
 int /*<<< orphan*/  MMAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,TYPE_3__*) ; 

MMAL_STATUS_T FUNC9(MMAL_CONNECTION_T *connection,
   MMAL_BUFFER_HEADER_T *buffer)
{
   MMAL_EVENT_FORMAT_CHANGED_T *event;
   MMAL_STATUS_T status;

   FUNC1("%p, %s", connection, connection->name);

   if (buffer->cmd != MMAL_EVENT_FORMAT_CHANGED)
      return MMAL_EINVAL;

   event = FUNC5(buffer);
   if (!event)
      return MMAL_EINVAL;

   /* If we don't need to recreate our buffers then we can just forward the event
    * to the next component (so it gets configured properly) */
   if ((connection->in->capabilities & MMAL_PORT_CAPABILITY_SUPPORTS_EVENT_FORMAT_CHANGE) &&
       event->buffer_size_min <= connection->out->buffer_size &&
       event->buffer_num_min <= connection->out->buffer_num)
   {
      status = FUNC6(connection->out->format, event->format);
      if (status == MMAL_SUCCESS)
         status = FUNC7(connection->out);
      if (status != MMAL_SUCCESS)
      {
         FUNC0("format commit failed on port %s(%p) (%i)",
                   connection->out->name, connection->out, status);
         return status;
      }

      FUNC2(buffer);
      status = FUNC8(connection->in, buffer);
      if (status != MMAL_SUCCESS)
      {
         FUNC0("buffer send failed on port %s(%p) (%i)",
                   connection->in->name, connection->in, status);
         FUNC3(buffer);
         return status;
      }

      return MMAL_SUCCESS;
   }

   /* Otherwise we have to reconfigure our pipeline */
   return FUNC4(connection, event->format);
}