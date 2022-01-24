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
struct TYPE_13__ {int /*<<< orphan*/  queue; } ;
struct TYPE_12__ {int /*<<< orphan*/  name; TYPE_1__* priv; } ;
struct TYPE_11__ {int /*<<< orphan*/  pf_send; } ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  TYPE_2__ MMAL_PORT_T ;
typedef  TYPE_3__ MMAL_POOL_T ;
typedef  int /*<<< orphan*/  MMAL_BUFFER_HEADER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,TYPE_2__*,TYPE_3__*) ; 
 scalar_t__ MMAL_ENOSYS ; 
 scalar_t__ MMAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static MMAL_STATUS_T FUNC5(MMAL_PORT_T* output, MMAL_PORT_T* input, MMAL_POOL_T* pool)
{
   MMAL_STATUS_T status = MMAL_SUCCESS;
   MMAL_BUFFER_HEADER_T *buffer;

   if (!output->priv->pf_send || !input->priv->pf_send)
      return MMAL_ENOSYS;

   FUNC1("output %s %p, input %s %p, pool: %p", output->name, output, input->name, input, pool);

   buffer = FUNC4(pool->queue);
   while (buffer)
   {
      status = FUNC3(output, buffer);
      if (status != MMAL_SUCCESS)
      {
         FUNC0("failed to send buffer to clock port %s", output->name);
         FUNC2(buffer);
         break;
      }

      buffer = FUNC4(pool->queue);
      if (buffer)
      {
         status = FUNC3(input, buffer);
         if (status != MMAL_SUCCESS)
         {
            FUNC0("failed to send buffer to clock port %s", output->name);
            FUNC2(buffer);
            break;
         }
         buffer = FUNC4(pool->queue);
      }
   }

   return status;
}