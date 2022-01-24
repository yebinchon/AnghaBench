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
typedef  int /*<<< orphan*/  buf ;
struct TYPE_3__ {int flags; char* argname; char* help; scalar_t__ name; } ;
typedef  TYPE_1__ OptionDef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

void FUNC3(const OptionDef *options, const char *msg, int req_flags,
                       int rej_flags, int alt_flags)
{
    const OptionDef *po;
    int first;

    first = 1;
    for (po = options; po->name; po++) {
        char buf[64];

        if (((po->flags & req_flags) != req_flags) ||
            (alt_flags && !(po->flags & alt_flags)) ||
            (po->flags & rej_flags))
            continue;

        if (first) {
            FUNC2("%s\n", msg);
            first = 0;
        }
        FUNC1(buf, po->name, sizeof(buf));
        if (po->argname) {
            FUNC0(buf, " ", sizeof(buf));
            FUNC0(buf, po->argname, sizeof(buf));
        }
        FUNC2("-%-17s  %s\n", buf, po->help);
    }
    FUNC2("\n");
}