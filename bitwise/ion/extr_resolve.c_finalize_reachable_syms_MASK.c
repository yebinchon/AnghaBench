#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* name; TYPE_1__* home_package; } ;
struct TYPE_5__ {char* path; } ;

/* Variables and functions */
 size_t FUNC0 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ flag_verbose ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 TYPE_2__** reachable_syms ; 

void FUNC3(void) {
    if (flag_verbose) {
        FUNC2("Finalizing reachable symbols\n");
    }
    size_t prev_num_reachable = 0;
    size_t num_reachable = FUNC0(reachable_syms);
    for (size_t i = 0; i < num_reachable; i++) {
        FUNC1(reachable_syms[i]);
        if (i == num_reachable - 1) {
            if (flag_verbose) {
                FUNC2("New reachable symbols:");
                for (size_t k = prev_num_reachable; k < num_reachable; k++) {
                    FUNC2(" %s/%s", reachable_syms[k]->home_package->path, reachable_syms[k]->name);
                }
                FUNC2("\n");
            }
            prev_num_reachable = num_reachable;
            num_reachable = FUNC0(reachable_syms);
        }
    }
}