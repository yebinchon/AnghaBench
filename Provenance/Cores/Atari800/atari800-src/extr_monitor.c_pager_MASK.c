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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*) ; 

__attribute__((used)) static int FUNC1(void)
{
	char buf[100];
	FUNC0(buf, sizeof(buf), "Press Return to continue ('q' to quit): ");
	return buf[0] == 'q' || buf[0] == 'Q';
}