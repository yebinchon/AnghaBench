#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ length; int /*<<< orphan*/  data; } ;
struct TYPE_12__ {TYPE_1__* in; TYPE_1__* out; } ;
struct TYPE_11__ {scalar_t__ is_enabled; int /*<<< orphan*/  name; scalar_t__ userdata; } ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  TYPE_1__ MMAL_PORT_T ;
typedef  TYPE_2__ MMAL_CONNECTION_T ;
typedef  TYPE_3__ MMAL_BUFFER_HEADER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,TYPE_1__*,TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ MMAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,TYPE_3__*) ; 

__attribute__((used)) static void FUNC4(MMAL_PORT_T *port, MMAL_BUFFER_HEADER_T *buffer)
{
   MMAL_STATUS_T status = MMAL_SUCCESS;
   MMAL_CONNECTION_T *connection = (MMAL_CONNECTION_T *)port->userdata;
   MMAL_PORT_T *other_port = (port == connection->in) ? connection->out : connection->in;

   FUNC1("(%s)%p,%p,%p,%i", port->name, port, buffer, buffer->data, (int)buffer->length);

   if (other_port->is_enabled)
   {
      status = FUNC3(other_port, buffer);
      if (status != MMAL_SUCCESS)
      {
         FUNC0("error sending buffer to clock port (%i)", status);
         FUNC2(buffer);
      }
   }
   else
   {
      FUNC2(buffer);
   }
}