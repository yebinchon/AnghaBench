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
struct TYPE_7__ {int /*<<< orphan*/  length; int /*<<< orphan*/  (* free_cb ) (int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ list_t ;
struct TYPE_8__ {int /*<<< orphan*/  data; struct TYPE_8__* next; } ;
typedef  TYPE_2__ list_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

list_node_t *FUNC3(list_t *list, list_node_t *node)
{
    FUNC0(list != NULL);
    FUNC0(node != NULL);

    list_node_t *next = node->next;

    if (list->free_cb) {
        list->free_cb(node->data);
    }
    FUNC1(node);
    --list->length;

    return next;
}