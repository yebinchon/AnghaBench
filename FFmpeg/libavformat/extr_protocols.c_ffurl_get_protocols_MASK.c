#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ URLProtocol ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__**) ; 
 TYPE_1__** FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 TYPE_1__** url_protocols ; 

const URLProtocol **FUNC3(const char *whitelist,
                                        const char *blacklist)
{
    const URLProtocol **ret;
    int i, ret_idx = 0;

    ret = FUNC1(FUNC0(url_protocols), sizeof(*ret));
    if (!ret)
        return NULL;

    for (i = 0; url_protocols[i]; i++) {
        const URLProtocol *up = url_protocols[i];

        if (whitelist && *whitelist && !FUNC2(up->name, whitelist))
            continue;
        if (blacklist && *blacklist && FUNC2(up->name, blacklist))
            continue;

        ret[ret_idx++] = up;
    }

    return ret;
}