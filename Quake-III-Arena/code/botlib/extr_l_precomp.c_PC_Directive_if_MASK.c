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
typedef  int /*<<< orphan*/  source_t ;

/* Variables and functions */
 int /*<<< orphan*/  INDENT_IF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,long*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int qfalse ; 
 int qtrue ; 

int FUNC2(source_t *source)
{
	signed long int value;
	int skip;

	if (!FUNC0(source, &value, NULL, qtrue)) return qfalse;
	skip = (value == 0);
	FUNC1(source, INDENT_IF, skip);
	return qtrue;
}