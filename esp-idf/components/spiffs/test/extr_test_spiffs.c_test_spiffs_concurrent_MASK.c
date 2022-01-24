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
struct TYPE_4__ {int write; int /*<<< orphan*/  done; int /*<<< orphan*/  result; } ;
typedef  TYPE_1__ read_write_test_arg_t ;
typedef  int /*<<< orphan*/  names ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_OK ; 
 TYPE_1__ FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  portMAX_DELAY ; 
 int portNUM_PROCESSORS ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  read_write_task ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int,TYPE_1__*,int,int /*<<< orphan*/ *,int const) ; 

void FUNC8(const char* filename_prefix)
{
    char names[4][64];
    for (size_t i = 0; i < 4; ++i) {
        FUNC3(names[i], sizeof(names[i]), "%s%d", filename_prefix, i + 1);
        FUNC4(names[i]);
    }

    read_write_test_arg_t args1 = FUNC0(names[0], 1);
    read_write_test_arg_t args2 = FUNC0(names[1], 2);

    FUNC2("writing f1 and f2\n");
    const int cpuid_0 = 0;
    const int cpuid_1 = portNUM_PROCESSORS - 1;
    FUNC7(&read_write_task, "rw1", 2048, &args1, 3, NULL, cpuid_0);
    FUNC7(&read_write_task, "rw2", 2048, &args2, 3, NULL, cpuid_1);

    FUNC6(args1.done, portMAX_DELAY);
    FUNC2("f1 done\n");
    FUNC1(ESP_OK, args1.result);
    FUNC6(args2.done, portMAX_DELAY);
    FUNC2("f2 done\n");
    FUNC1(ESP_OK, args2.result);

    args1.write = false;
    args2.write = false;
    read_write_test_arg_t args3 = FUNC0(names[2], 3);
    read_write_test_arg_t args4 = FUNC0(names[3], 4);

    FUNC2("reading f1 and f2, writing f3 and f4\n");

    FUNC7(&read_write_task, "rw3", 2048, &args3, 3, NULL, cpuid_1);
    FUNC7(&read_write_task, "rw4", 2048, &args4, 3, NULL, cpuid_0);
    FUNC7(&read_write_task, "rw1", 2048, &args1, 3, NULL, cpuid_0);
    FUNC7(&read_write_task, "rw2", 2048, &args2, 3, NULL, cpuid_1);

    FUNC6(args1.done, portMAX_DELAY);
    FUNC2("f1 done\n");
    FUNC1(ESP_OK, args1.result);
    FUNC6(args2.done, portMAX_DELAY);
    FUNC2("f2 done\n");
    FUNC1(ESP_OK, args2.result);
    FUNC6(args3.done, portMAX_DELAY);
    FUNC2("f3 done\n");
    FUNC1(ESP_OK, args3.result);
    FUNC6(args4.done, portMAX_DELAY);
    FUNC2("f4 done\n");
    FUNC1(ESP_OK, args4.result);

    FUNC5(args1.done);
    FUNC5(args2.done);
    FUNC5(args3.done);
    FUNC5(args4.done);
}