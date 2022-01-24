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
struct TYPE_2__ {int done; int /*<<< orphan*/  result; int /*<<< orphan*/  ctx; int /*<<< orphan*/  ret; } ;
typedef  TYPE_1__ finalise_sha_param_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  one_hundred_as ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void *v_param)
{
    finalise_sha_param_t *param = (finalise_sha_param_t *)v_param;

    for (int i = 0; i < 5; i++) {
        FUNC0(0, FUNC2(&param->ctx, one_hundred_as, 100));
    }

    param->ret = FUNC1(&param->ctx, param->result);
    param->done = true;
    FUNC3(NULL);
}