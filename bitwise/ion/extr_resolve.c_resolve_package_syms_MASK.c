#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* home_package; } ;
struct TYPE_8__ {TYPE_2__** syms; } ;
typedef  TYPE_1__ Package ;

/* Variables and functions */
 size_t FUNC0 (TYPE_2__**) ; 
 TYPE_1__* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

void FUNC4(Package *package) {
    Package *old_package = FUNC1(package);
    for (size_t i = 0; i < FUNC0(package->syms); i++) {
        if (package->syms[i]->home_package == package) {
            FUNC3(package->syms[i]);
        }
    }
    FUNC2(old_package);
}