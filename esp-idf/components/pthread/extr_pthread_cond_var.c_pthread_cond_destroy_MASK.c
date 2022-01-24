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
typedef  scalar_t__ pthread_cond_t ;
struct TYPE_3__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  waiter_list; } ;
typedef  TYPE_1__ esp_pthread_cond_t ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

int FUNC5(pthread_cond_t *cv)
{
    int ret = 0;

    if (cv == NULL || *cv == (pthread_cond_t) 0) {
        return EINVAL;
    }

    esp_pthread_cond_t *cond = (esp_pthread_cond_t *) *cv;

    FUNC1(&cond->lock);
    if (!FUNC0(&cond->waiter_list)) {
        ret = EBUSY;
    }
    FUNC3(&cond->lock);

    if (ret == 0) {
        *cv = (pthread_cond_t) 0;
        FUNC2(&cond->lock);
        FUNC4(cond);
    }

    return ret;
}