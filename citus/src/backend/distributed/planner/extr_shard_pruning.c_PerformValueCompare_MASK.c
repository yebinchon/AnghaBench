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
typedef  int /*<<< orphan*/  FunctionCallInfo ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(FunctionCallInfo compareFunctionCall, Datum a, Datum b)
{
	FUNC1(compareFunctionCall, 0, a);
	FUNC1(compareFunctionCall, 1, b);

	return FUNC0(compareFunctionCall);
}