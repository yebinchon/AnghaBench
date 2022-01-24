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
struct cdevsw {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int FUNC1 (int,struct cdevsw*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct cdevsw*) ; 

int
FUNC3(int index, struct cdevsw * csw, int bdev)
{
	index = FUNC1(index, csw);
	if (index < 0) {
		return (index);
	}
	if (FUNC0(index, bdev) < 0) {
		FUNC2(index, csw);
		return (-1);
	}
	return (index);
}