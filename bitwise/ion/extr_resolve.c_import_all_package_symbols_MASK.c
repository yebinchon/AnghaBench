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
struct TYPE_6__ {char const* name; TYPE_1__* home_package; } ;
struct TYPE_5__ {TYPE_2__** syms; } ;
typedef  TYPE_1__ Package ;

/* Variables and functions */
 size_t FUNC0 (TYPE_2__**) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,TYPE_2__*) ; 

void FUNC3(Package *package) {
    // TODO: should have a more general mechanism
    const char *main_name = FUNC1("main");
    for (size_t i = 0; i < FUNC0(package->syms); i++) {
        if (package->syms[i]->home_package == package && package->syms[i]->name != main_name) {
            FUNC2(package->syms[i]->name, package->syms[i]);
        }
    }
}