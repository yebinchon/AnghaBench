#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {unsigned int connection_num; unsigned int component_num; int /*<<< orphan*/  sema; int /*<<< orphan*/ * component; int /*<<< orphan*/ * connection; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* pf_destroy ) (TYPE_1__*) ;} ;
typedef  int /*<<< orphan*/  MMAL_STATUS_T ;
typedef  TYPE_1__ MMAL_GRAPH_T ;
typedef  TYPE_2__ MMAL_GRAPH_PRIVATE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  MMAL_EINVAL ; 
 int /*<<< orphan*/  MMAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

MMAL_STATUS_T FUNC6(MMAL_GRAPH_T *graph)
{
   unsigned i;
   MMAL_GRAPH_PRIVATE_T *private = (MMAL_GRAPH_PRIVATE_T *)graph;

   if (!graph)
      return MMAL_EINVAL;

   FUNC0("%p", graph);

   /* Notify client of destruction */
   if (graph->pf_destroy)
      graph->pf_destroy(graph);

   for (i = 0; i < private->connection_num; i++)
      FUNC2(private->connection[i]);

   for (i = 0; i < private->component_num; i++)
      FUNC1(private->component[i]);

   FUNC5(&private->sema);

   FUNC4(graph);
   return MMAL_SUCCESS;
}