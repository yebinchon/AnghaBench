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
typedef  int /*<<< orphan*/  Macro ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int) ; 

__attribute__((used)) static Macro *FUNC1(Macro *tmpl) {
    Macro *r = FUNC0(sizeof(Macro));
    *r = *tmpl;
    return r;
}