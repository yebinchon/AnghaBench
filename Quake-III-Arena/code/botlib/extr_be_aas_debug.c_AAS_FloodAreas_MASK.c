#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_2__ {int numareas; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 TYPE_1__ aasworld ; 

void FUNC4(vec3_t origin)
{
	int areanum, cluster, *done;

	done = (int *) FUNC3(aasworld.numareas * sizeof(int));
	areanum = FUNC2(origin);
	cluster = FUNC0(areanum);
	FUNC1(areanum, cluster, done);
}