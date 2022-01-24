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
typedef  int /*<<< orphan*/  source_t ;
struct TYPE_3__ {int /*<<< orphan*/  weight; int /*<<< orphan*/  maxweight; int /*<<< orphan*/  minweight; scalar_t__ type; } ;
typedef  TYPE_1__ fuzzyseperator_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ WT_BALANCE ; 
 int qfalse ; 
 int qtrue ; 

int FUNC3(source_t *source, fuzzyseperator_t *fs)
{
	if (FUNC0(source, "balance"))
	{
		fs->type = WT_BALANCE;
		if (!FUNC1(source, "(")) return qfalse;
		if (!FUNC2(source, &fs->weight)) return qfalse;
		if (!FUNC1(source, ",")) return qfalse;
		if (!FUNC2(source, &fs->minweight)) return qfalse;
		if (!FUNC1(source, ",")) return qfalse;
		if (!FUNC2(source, &fs->maxweight)) return qfalse;
		if (!FUNC1(source, ")")) return qfalse;
	} //end if
	else
	{
		fs->type = 0;
		if (!FUNC2(source, &fs->weight)) return qfalse;
		fs->minweight = fs->weight;
		fs->maxweight = fs->weight;
	} //end if
	if (!FUNC1(source, ";")) return qfalse;
	return qtrue;
}