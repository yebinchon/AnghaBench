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

/* Variables and functions */
 int NUM_ARCHES ; 
 int /*<<< orphan*/ * arch_names ; 
 scalar_t__ strcmp (int /*<<< orphan*/ ,char const*) ; 

int get_arch(const char *name) {
    for (int i = 0; i < NUM_ARCHES; i++) {
        if (strcmp(arch_names[i], name) == 0) {
            return i;
        }
    }
    return -1;
}