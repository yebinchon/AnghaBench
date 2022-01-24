#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pthread_condattr_t ;
typedef  scalar_t__ pthread_cond_t ;
struct TYPE_2__ {int /*<<< orphan*/  waiter_list; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ esp_pthread_cond_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int,int) ; 

int FUNC3(pthread_cond_t *cv, const pthread_condattr_t *att)
{
    (void) att; /* Unused argument as of now */

    if (cv == NULL) {
        return EINVAL;
    }

    esp_pthread_cond_t *cond = (esp_pthread_cond_t *) FUNC2(1, sizeof(esp_pthread_cond_t));
    if (cond == NULL) {
        return ENOMEM;
    }

    FUNC1(&cond->lock);
    FUNC0(&cond->waiter_list);

    *cv = (pthread_cond_t) cond;
    return 0;
}