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
typedef  int /*<<< orphan*/  nvs_type_t ;
typedef  int /*<<< orphan*/ * nvs_iterator_t ;
struct TYPE_3__ {char* namespace_name; char* key; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ nvs_entry_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/ * FUNC1 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(const char *part, const char *name, const char *str_type)
{
    nvs_type_t type = FUNC5(str_type);

    nvs_iterator_t it = FUNC1(part, NULL, type);
    if (it == NULL) {
        FUNC0(TAG, "No such enty was found");
        return 1;
    }

    do {
        nvs_entry_info_t info;
        FUNC2(it, &info);
        it = FUNC3(it);

        FUNC4("namespace '%s', key '%s', type '%s' \n",
               info.namespace_name, info.key, FUNC6(info.type));
    } while (it != NULL);

    return 0;
}