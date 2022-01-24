#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned int connection_num; int /*<<< orphan*/ * connection; } ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  int /*<<< orphan*/  MMAL_GRAPH_T ;
typedef  TYPE_1__ MMAL_GRAPH_PRIVATE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ MMAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

MMAL_STATUS_T FUNC3(MMAL_GRAPH_T *graph)
{
   MMAL_GRAPH_PRIVATE_T *private = (MMAL_GRAPH_PRIVATE_T *)graph;
   MMAL_STATUS_T status = MMAL_SUCCESS;
   unsigned int i;

   FUNC0("graph: %p", graph);

   FUNC1(private);

   /* Disable all our connections */
   for (i = 0; i < private->connection_num; i++)
   {
      status = FUNC2(private->connection[i]);
      if (status != MMAL_SUCCESS)
         break;
   }

   return status;
}