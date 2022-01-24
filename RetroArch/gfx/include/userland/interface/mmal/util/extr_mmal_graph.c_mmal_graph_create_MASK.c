#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct MMAL_GRAPH_USERDATA_T {int dummy; } ;
struct TYPE_8__ {struct MMAL_GRAPH_USERDATA_T* userdata; } ;
struct TYPE_9__ {int /*<<< orphan*/  sema; TYPE_1__ graph; } ;
typedef  int /*<<< orphan*/  MMAL_STATUS_T ;
typedef  TYPE_1__ MMAL_GRAPH_T ;
typedef  TYPE_2__ MMAL_GRAPH_PRIVATE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__**,unsigned int) ; 
 int /*<<< orphan*/  MMAL_EINVAL ; 
 int /*<<< orphan*/  MMAL_ENOMEM ; 
 int /*<<< orphan*/  MMAL_ENOSPC ; 
 int /*<<< orphan*/  MMAL_SUCCESS ; 
 scalar_t__ VCOS_SUCCESS ; 
 TYPE_2__* FUNC2 (int,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

MMAL_STATUS_T FUNC5(MMAL_GRAPH_T **graph, unsigned int userdata_size)
{
   MMAL_GRAPH_PRIVATE_T *private;

   FUNC1("graph %p, userdata_size %u", graph, userdata_size);

   /* Sanity checking */
   if (!graph)
      return MMAL_EINVAL;

   private = FUNC2(1, sizeof(MMAL_GRAPH_PRIVATE_T) + userdata_size, "mmal connection graph");
   if (!private)
      return MMAL_ENOMEM;
   *graph = &private->graph;
   if (userdata_size)
      (*graph)->userdata = (struct MMAL_GRAPH_USERDATA_T *)&private[1];

   if (FUNC4(&private->sema, "mmal graph sema", 0) != VCOS_SUCCESS)
   {
      FUNC0("failed to create semaphore %p", graph);
      FUNC3(private);
      return MMAL_ENOSPC;
   }

   return MMAL_SUCCESS;
}