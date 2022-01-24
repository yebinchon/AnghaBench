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
typedef  scalar_t__ uint64_t ;
struct TYPE_2__ {int method; int delay_us; int result; int /*<<< orphan*/  done; } ;
typedef  TYPE_1__ delay_test_arg_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int portTICK_PERIOD_MS ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(void* p)
{
    delay_test_arg_t* arg = (delay_test_arg_t*) p;
    FUNC3(1);
    uint64_t start = FUNC2();
    switch (arg->method) {
        case 0:
            FUNC1(arg->delay_us);
            break;
        case 1:
            FUNC3(arg->delay_us / portTICK_PERIOD_MS / 1000);
            break;
        default:
            FUNC0();
    }
    uint64_t stop = FUNC2();

    arg->result = (int) (stop - start);
    FUNC5(arg->done);
    FUNC4(NULL);
}