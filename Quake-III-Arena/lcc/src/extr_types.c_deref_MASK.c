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
typedef  TYPE_1__* Type ;
struct TYPE_9__ {TYPE_1__* type; } ;
struct TYPE_8__ {struct TYPE_8__* type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 TYPE_2__* FUNC3 (TYPE_1__*) ; 

Type FUNC4(Type ty) {
	if (FUNC2(ty))
		ty = ty->type;
	else
		FUNC0("type error: %s\n", "pointer expected");
	return FUNC1(ty) ? FUNC3(ty)->type : ty;
}