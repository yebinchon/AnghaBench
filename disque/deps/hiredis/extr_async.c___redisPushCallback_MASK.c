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
struct TYPE_8__ {TYPE_2__* tail; TYPE_2__* head; } ;
typedef  TYPE_1__ redisCallbackList ;
struct TYPE_9__ {struct TYPE_9__* next; } ;
typedef  TYPE_2__ redisCallback ;

/* Variables and functions */
 int REDIS_ERR_OOM ; 
 int REDIS_OK ; 
 TYPE_2__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_2__*,int) ; 

__attribute__((used)) static int FUNC2(redisCallbackList *list, redisCallback *source) {
    redisCallback *cb;

    /* Copy callback from stack to heap */
    cb = FUNC0(sizeof(*cb));
    if (cb == NULL)
        return REDIS_ERR_OOM;

    if (source != NULL) {
        FUNC1(cb,source,sizeof(*cb));
        cb->next = NULL;
    }

    /* Store callback in list */
    if (list->head == NULL)
        list->head = cb;
    if (list->tail != NULL)
        list->tail->next = cb;
    list->tail = cb;
    return REDIS_OK;
}