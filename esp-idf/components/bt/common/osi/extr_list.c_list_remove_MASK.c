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
struct TYPE_7__ {TYPE_2__* tail; TYPE_2__* head; } ;
typedef  TYPE_1__ list_t ;
struct TYPE_8__ {void* data; struct TYPE_8__* next; } ;
typedef  TYPE_2__ list_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (TYPE_1__*,TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 

bool FUNC3(list_t *list, void *data)
{
    FUNC0(list != NULL);
    FUNC0(data != NULL);

    if (FUNC2(list)) {
        return false;
    }

    if (list->head->data == data) {
        list_node_t *next = FUNC1(list, list->head);
        if (list->tail == list->head) {
            list->tail = next;
        }
        list->head = next;
        return true;
    }

    for (list_node_t *prev = list->head, *node = list->head->next; node; prev = node, node = node->next)
        if (node->data == data) {
            prev->next = FUNC1(list, node);
            if (list->tail == node) {
                list->tail = prev;
            }
            return true;
        }

    return false;
}