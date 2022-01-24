#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  thread; } ;
typedef  TYPE_1__ ThreadContext ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  worker_func ; 

__attribute__((used)) static int FUNC3(ThreadContext *c, int nb_threads)
{
    nb_threads = FUNC1(&c->thread, c, worker_func, NULL, nb_threads);
    if (nb_threads <= 1)
        FUNC2(&c->thread);
    return FUNC0(nb_threads, 1);
}