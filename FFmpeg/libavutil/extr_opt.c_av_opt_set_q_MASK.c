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
struct TYPE_3__ {int /*<<< orphan*/  den; int /*<<< orphan*/  num; } ;
typedef  TYPE_1__ AVRational ;

/* Variables and functions */
 int FUNC0 (void*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

int FUNC1(void *obj, const char *name, AVRational val, int search_flags)
{
    return FUNC0(obj, name, val.num, val.den, 1, search_flags);
}