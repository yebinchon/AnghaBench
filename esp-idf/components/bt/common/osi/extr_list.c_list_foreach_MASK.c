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
struct TYPE_5__ {TYPE_2__* head; } ;
typedef  TYPE_1__ list_t ;
struct TYPE_6__ {int /*<<< orphan*/  data; struct TYPE_6__* next; } ;
typedef  TYPE_2__ list_node_t ;
typedef  int /*<<< orphan*/  (* list_iter_cb ) (int /*<<< orphan*/ ,void*) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

list_node_t *FUNC1(const list_t *list, list_iter_cb callback, void *context)
{
  FUNC0(list != NULL);
  FUNC0(callback != NULL);

  for (list_node_t *node = list->head; node; ) {
    list_node_t *next = node->next;
    if (!callback(node->data, context)) {
      return node;
    }
    node = next;
  }
  return NULL;
}