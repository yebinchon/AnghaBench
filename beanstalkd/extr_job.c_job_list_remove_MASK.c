#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_2__* next; TYPE_1__* prev; } ;
struct TYPE_9__ {TYPE_1__* prev; } ;
struct TYPE_8__ {TYPE_2__* next; } ;
typedef  TYPE_3__ Job ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 

Job *
FUNC2(Job *j)
{
    if (!j) return NULL;
    if (FUNC0(j)) return NULL; /* not in a doubly-linked list */

    j->next->prev = j->prev;
    j->prev->next = j->next;

    FUNC1(j);

    return j;
}