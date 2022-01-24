#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ esp_err_t ;
struct TYPE_4__ {TYPE_1__* namespace; int /*<<< orphan*/  end; } ;
struct TYPE_3__ {char** sval; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 int FUNC1 (int,char**,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 TYPE_2__ erase_all_args ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC5(int argc, char **argv)
{
    int nerrors = FUNC1(argc, argv, (void **) &erase_all_args);
    if (nerrors != 0) {
        FUNC2(stderr, erase_all_args.end, argv[0]);
        return 1;
    }

    const char *name = erase_all_args.namespace->sval[0];

    esp_err_t err = FUNC3(name);
    if (err != ESP_OK) {
        FUNC0(TAG, "%s", FUNC4(err));
        return 1;
    }

    return 0;
}