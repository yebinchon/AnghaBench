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
typedef  int /*<<< orphan*/  hb_buffer_t ;
struct TYPE_3__ {scalar_t__ size; scalar_t__ count; int /*<<< orphan*/ * tail; int /*<<< orphan*/ * head; } ;
typedef  TYPE_1__ hb_buffer_list_t ;

/* Variables and functions */

hb_buffer_t* FUNC0(hb_buffer_list_t *list)
{
    if (list == NULL)
    {
        return NULL;
    }
    hb_buffer_t *head = list->head;
    list->head = list->tail = NULL;
    list->count = 0;
    list->size = 0;
    return head;
}