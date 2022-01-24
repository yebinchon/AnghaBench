#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* nfsnode_t ;
struct TYPE_6__ {int /*<<< orphan*/  n_flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int NBUSY ; 
 int NBUSYWANT ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

void
FUNC5(nfsnode_t np)
{
	int wanted;

	FUNC2(np);
	wanted = FUNC1(np->n_flag, NBUSYWANT);
	FUNC0(np->n_flag, NBUSY|NBUSYWANT);
	FUNC3(np);
	if (wanted)
		FUNC4(np);
}