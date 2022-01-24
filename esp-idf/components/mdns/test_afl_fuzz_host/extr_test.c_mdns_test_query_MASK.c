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
typedef  int /*<<< orphan*/  mdns_result_t ;
typedef  int /*<<< orphan*/  mdns_action_t ;

/* Variables and functions */
 int /*<<< orphan*/  ACTION_SEARCH_ADD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  MDNS_TYPE_PTR ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  search ; 

__attribute__((used)) static mdns_result_t* FUNC6(const char * service_name, const char * proto)
{
    search = FUNC4(NULL, service_name, proto, MDNS_TYPE_PTR, 3000, 20);
    if (!search) {
        FUNC1();
    }

    if (FUNC5(ACTION_SEARCH_ADD, search)) {
        FUNC3(search);
        FUNC1();
    }

    mdns_action_t * a = NULL;
    FUNC0(&a);
    FUNC2(a);
    return NULL;
}