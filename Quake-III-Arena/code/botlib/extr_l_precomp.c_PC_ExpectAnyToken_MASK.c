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
typedef  int /*<<< orphan*/  token_t ;
typedef  int /*<<< orphan*/  source_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int qfalse ; 
 int qtrue ; 

int FUNC2(source_t *source, token_t *token)
{
	if (!FUNC0(source, token))
	{
		FUNC1(source, "couldn't read expected token");
		return qfalse;
	} //end if
	else
	{
		return qtrue;
	} //end else
}