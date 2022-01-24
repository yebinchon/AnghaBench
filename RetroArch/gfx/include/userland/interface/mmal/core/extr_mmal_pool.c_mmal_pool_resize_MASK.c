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
typedef  scalar_t__ uint32_t ;
struct TYPE_6__ {scalar_t__ payload_size; unsigned int headers_alloc_num; unsigned int header_size; } ;
struct TYPE_5__ {unsigned int headers_num; int /*<<< orphan*/ * header; int /*<<< orphan*/  queue; } ;
typedef  int /*<<< orphan*/  MMAL_STATUS_T ;
typedef  TYPE_1__ MMAL_POOL_T ;
typedef  TYPE_2__ MMAL_POOL_PRIVATE_T ;

/* Variables and functions */
 int /*<<< orphan*/  ALIGN ; 
 int /*<<< orphan*/  MMAL_EINVAL ; 
 int /*<<< orphan*/  MMAL_ENOMEM ; 
 int /*<<< orphan*/  MMAL_SUCCESS ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

MMAL_STATUS_T FUNC6(MMAL_POOL_T *pool, unsigned int headers, uint32_t payload_size)
{
   MMAL_POOL_PRIVATE_T *private = (MMAL_POOL_PRIVATE_T *)pool;
   unsigned int i;

   if (!private || !headers)
      return MMAL_EINVAL;

   /* Check if anything needs to be done */
   if (headers == pool->headers_num && payload_size == private->payload_size)
      return MMAL_SUCCESS;

   /* Remove all the headers from the queue */
   for (i = 0; i < pool->headers_num; i++)
      FUNC2(pool->queue);

   /* Start by freeing the current payloads */
   private->payload_size = 0;
   FUNC1(pool, pool->headers_num, 0);
   pool->headers_num = 0;

   /* Check if we need to reallocate the buffer headers themselves */
   if (headers > private->headers_alloc_num)
   {
      private->headers_alloc_num = 0;
      if (pool->header)
         FUNC5(pool->header);
      pool->header =
         FUNC4(private->header_size * headers + FUNC0(sizeof(void *)*headers,ALIGN),
                     1, "MMAL buffer headers");
      if (!pool->header)
         return MMAL_ENOMEM;
      private->headers_alloc_num = headers;
   }

   /* Allocate the new payloads */
   private->payload_size = payload_size;
   FUNC1(pool, headers, 1);

   /* Add all the headers to the queue */
   for (i = 0; i < pool->headers_num; i++)
      FUNC3(pool->queue, pool->header[i]);

   return MMAL_SUCCESS;
}