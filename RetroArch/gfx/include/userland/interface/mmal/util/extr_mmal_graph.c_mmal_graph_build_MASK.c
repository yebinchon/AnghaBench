#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  MMAL_STATUS_T ;
typedef  int /*<<< orphan*/  MMAL_GRAPH_T ;
typedef  int /*<<< orphan*/  MMAL_GRAPH_PRIVATE_T ;
typedef  int /*<<< orphan*/  MMAL_COMPONENT_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  mmal_component_create_from_graph ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

MMAL_STATUS_T FUNC2(MMAL_GRAPH_T *graph,
   const char *name, MMAL_COMPONENT_T **component)
{
   FUNC0("graph: %p, name: %s, component: %p", graph, name, component);
   return FUNC1(name, mmal_component_create_from_graph,
      (MMAL_GRAPH_PRIVATE_T *)graph, component);
}