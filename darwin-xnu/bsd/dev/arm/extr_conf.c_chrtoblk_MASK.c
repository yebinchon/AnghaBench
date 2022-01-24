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
typedef  int dev_t ;

/* Variables and functions */
 int NODEV ; 
 int* chrtoblktab ; 
 size_t FUNC0 (int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 size_t nchrdev ; 

dev_t
FUNC3(dev_t dev)
{
	int             blkmaj;

	if (FUNC0(dev) >= nchrdev)
		return (NODEV);
	blkmaj = chrtoblktab[FUNC0(dev)];
	if (blkmaj == NODEV)
		return (NODEV);
	return (FUNC1(blkmaj, FUNC2(dev)));
}