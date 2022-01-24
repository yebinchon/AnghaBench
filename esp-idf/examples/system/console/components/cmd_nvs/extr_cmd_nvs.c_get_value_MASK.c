#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ esp_err_t ;
struct TYPE_6__ {TYPE_2__* type; TYPE_1__* key; int /*<<< orphan*/  end; } ;
struct TYPE_5__ {char** sval; } ;
struct TYPE_4__ {char** sval; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 int FUNC1 (int,char**,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 TYPE_3__ get_args ; 
 scalar_t__ FUNC4 (char const*,char const*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC5(int argc, char **argv)
{
    int nerrors = FUNC1(argc, argv, (void **) &get_args);
    if (nerrors != 0) {
        FUNC2(stderr, get_args.end, argv[0]);
        return 1;
    }

    const char *key = get_args.key->sval[0];
    const char *type = get_args.type->sval[0];

    esp_err_t err = FUNC4(key, type);

    if (err != ESP_OK) {
        FUNC0(TAG, "%s", FUNC3(err));
        return 1;
    }

    return 0;
}