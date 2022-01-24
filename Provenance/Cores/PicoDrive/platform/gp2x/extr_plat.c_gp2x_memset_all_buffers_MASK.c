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

/* Variables and functions */
 scalar_t__* gp2x_screens ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 

void FUNC1(int offset, int byte, int len)
{
	FUNC0((char *)gp2x_screens[0] + offset, byte, len);
	FUNC0((char *)gp2x_screens[1] + offset, byte, len);
	FUNC0((char *)gp2x_screens[2] + offset, byte, len);
	FUNC0((char *)gp2x_screens[3] + offset, byte, len);
}