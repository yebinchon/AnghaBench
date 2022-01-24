#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int tp; } ;
typedef  TYPE_1__ Tokenrow ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 

void
FUNC4(Tokenrow *dtr, int ntok, Tokenrow *str)
{
	int nrtok = FUNC3(str);

	dtr->tp += ntok;
	FUNC0(dtr, nrtok-ntok);
	dtr->tp -= ntok;
	FUNC2(dtr, str);
	FUNC1(dtr);
	dtr->tp += nrtok;
	FUNC1(dtr);
}