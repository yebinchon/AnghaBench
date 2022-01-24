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
struct TYPE_3__ {int val; int /*<<< orphan*/ * name; } ;
typedef  TYPE_1__ configEnum ;

/* Variables and functions */
 int INT_MIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 

int FUNC1(configEnum *ce, char *name) {
    while(ce->name != NULL) {
        if (!FUNC0(ce->name,name)) return ce->val;
        ce++;
    }
    return INT_MIN;
}