#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_11__ {int /*<<< orphan*/  queue; } ;
struct TYPE_10__ {scalar_t__ buffer_num; int /*<<< orphan*/  name; TYPE_1__* priv; } ;
struct TYPE_9__ {int /*<<< orphan*/  pf_send; } ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  TYPE_2__ MMAL_PORT_T ;
typedef  TYPE_3__ MMAL_POOL_T ;
typedef  int /*<<< orphan*/  MMAL_BUFFER_HEADER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,TYPE_2__*,TYPE_3__*) ; 
 scalar_t__ MMAL_ENOMEM ; 
 scalar_t__ MMAL_ENOSYS ; 
 scalar_t__ MMAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static MMAL_STATUS_T FUNC5(MMAL_PORT_T* port, MMAL_POOL_T* pool)
{
   MMAL_STATUS_T status = MMAL_SUCCESS;
   uint32_t buffer_idx;
   MMAL_BUFFER_HEADER_T *buffer;

   if (!port->priv->pf_send)
      return MMAL_ENOSYS;

   FUNC1("%s port %p, pool: %p", port->name, port, pool);

   /* Populate port from pool */
   for (buffer_idx = 0; buffer_idx < port->buffer_num; buffer_idx++)
   {
      buffer = FUNC4(pool->queue);
      if (!buffer)
      {
         FUNC0("too few buffers in the pool");
         status = MMAL_ENOMEM;
         break;
      }

      status = FUNC3(port, buffer);
      if (status != MMAL_SUCCESS)
      {
         FUNC0("failed to send buffer to port");
         FUNC2(buffer);
         break;
      }
   }

   return status;
}