#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* name; struct TYPE_5__* next; } ;
typedef  TYPE_1__ libvar_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 TYPE_1__* libvarlist ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (char*) ; 

libvar_t *FUNC4(char *var_name)
{
	libvar_t *v;

	v = (libvar_t *) FUNC1(sizeof(libvar_t) + FUNC3(var_name) + 1);
	FUNC0(v, 0, sizeof(libvar_t));
	v->name = (char *) v + sizeof(libvar_t);
	FUNC2(v->name, var_name);
	//add the variable in the list
	v->next = libvarlist;
	libvarlist = v;
	return v;
}