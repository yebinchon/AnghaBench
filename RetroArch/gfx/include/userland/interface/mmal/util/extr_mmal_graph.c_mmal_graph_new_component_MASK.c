#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ component_num; int /*<<< orphan*/ ** component; } ;
typedef  scalar_t__ MMAL_STATUS_T ;
typedef  int /*<<< orphan*/  MMAL_GRAPH_T ;
typedef  TYPE_1__ MMAL_GRAPH_PRIVATE_T ;
typedef  int /*<<< orphan*/  MMAL_COMPONENT_T ;

/* Variables and functions */
 scalar_t__ GRAPH_CONNECTIONS_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ **) ; 
 scalar_t__ MMAL_ENOSPC ; 
 scalar_t__ MMAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ **) ; 

MMAL_STATUS_T FUNC4(MMAL_GRAPH_T *graph, const char *name,
   MMAL_COMPONENT_T **component)
{
   MMAL_GRAPH_PRIVATE_T *private = (MMAL_GRAPH_PRIVATE_T *)graph;
   MMAL_COMPONENT_T *comp;
   MMAL_STATUS_T status;

   FUNC1("graph: %p, name: %s, component: %p", graph, name, component);

   if (private->component_num >= GRAPH_CONNECTIONS_MAX)
   {
      FUNC0("no space for component %s", name);
      return MMAL_ENOSPC;
   }

   status = FUNC3(name, &comp);
   if (status != MMAL_SUCCESS)
   {
      FUNC0("could not create component %s (%i)", name, status);
      return status;
   }

   private->component[private->component_num++] = comp;
   if (component)
   {
      FUNC2(comp);
      *component = comp;
   }

   return MMAL_SUCCESS;
}