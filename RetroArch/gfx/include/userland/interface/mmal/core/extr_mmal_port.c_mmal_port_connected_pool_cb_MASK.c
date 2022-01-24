#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  length; int /*<<< orphan*/  alloc_size; int /*<<< orphan*/  data; } ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  int /*<<< orphan*/  MMAL_PORT_T ;
typedef  int /*<<< orphan*/  MMAL_POOL_T ;
typedef  TYPE_1__ MMAL_BUFFER_HEADER_T ;
typedef  int MMAL_BOOL_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ MMAL_SUCCESS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static MMAL_BOOL_T FUNC3(MMAL_POOL_T *pool, MMAL_BUFFER_HEADER_T *buffer, void *userdata)
{
   MMAL_PORT_T* port = (MMAL_PORT_T*)userdata;
   MMAL_STATUS_T status;
   FUNC1(pool);

   FUNC0("released buffer %p, data %p alloc_size %u length %u",
             buffer, buffer->data, buffer->alloc_size, buffer->length);

   /* Pipe the buffer back to the output port */
   status = FUNC2(port, buffer);

   /* Put the buffer back in the pool if we were successful */
   return status != MMAL_SUCCESS;
}