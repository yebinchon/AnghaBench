#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ length; int /*<<< orphan*/  data; } ;
struct TYPE_11__ {int /*<<< orphan*/  (* callback ) (TYPE_2__*) ;int /*<<< orphan*/  queue; } ;
struct TYPE_10__ {int /*<<< orphan*/  name; scalar_t__ userdata; } ;
typedef  TYPE_1__ MMAL_PORT_T ;
typedef  TYPE_2__ MMAL_CONNECTION_T ;
typedef  TYPE_3__ MMAL_BUFFER_HEADER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,TYPE_1__*,TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC3(MMAL_PORT_T *port, MMAL_BUFFER_HEADER_T *buffer)
{
   MMAL_CONNECTION_T *connection = (MMAL_CONNECTION_T *)port->userdata;

   FUNC0("(%s)%p,%p,%p,%i", port->name, port, buffer, buffer->data, (int)buffer->length);

   /* Queue the buffer produced by the output port */
   FUNC1(connection->queue, buffer);

   if (connection->callback)
      connection->callback(connection);
}