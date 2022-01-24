#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct thd_s {int /*<<< orphan*/  mutex; int /*<<< orphan*/  arg; int /*<<< orphan*/  (* func ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  hnd_key ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC4(void *hnd) {
    struct thd_s *hnds = (struct thd_s *)hnd;

    FUNC0(&hnds->mutex);

    /* Set the handle for the thread, and call the actual thread function. */
    FUNC2(hnd_key, hnd);
    hnds->func(hnds->arg);

    FUNC1(&hnds->mutex);

    return NULL;
}