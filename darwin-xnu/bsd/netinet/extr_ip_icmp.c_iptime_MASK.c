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
typedef  int u_int32_t ;
struct timeval {int tv_sec; int tv_usec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timeval*) ; 
 int FUNC1 (int) ; 

u_int32_t
FUNC2(void)
{
	struct timeval atv;
	u_int32_t t;

	FUNC0(&atv);
	t = (atv.tv_sec % (24*60*60)) * 1000 + atv.tv_usec / 1000;
	return (FUNC1(t));
}