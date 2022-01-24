#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ pthread_cond_t ;
struct TYPE_4__ {int /*<<< orphan*/  wait_sem; } ;
typedef  TYPE_1__ esp_pthread_cond_waiter_t ;
struct TYPE_5__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  waiter_list; } ;
typedef  TYPE_2__ esp_pthread_cond_t ;

/* Variables and functions */
 int EINVAL ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(pthread_cond_t *cv)
{
    if (cv == NULL || *cv == (pthread_cond_t) 0) {
        return EINVAL;
    }

    esp_pthread_cond_t *cond = (esp_pthread_cond_t *) *cv;

    FUNC1(&cond->lock);
    esp_pthread_cond_waiter_t *entry;
    entry = FUNC0(&cond->waiter_list);
    if (entry) {
        FUNC3(entry->wait_sem);
    }
    FUNC2(&cond->lock);

    return 0;
}