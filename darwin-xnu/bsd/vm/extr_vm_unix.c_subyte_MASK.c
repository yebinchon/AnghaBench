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
typedef  int /*<<< orphan*/  user_addr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*,int /*<<< orphan*/ ,int) ; 

int
FUNC1(
	user_addr_t addr,
	int byte)
{
	char character;
	
	character = (char)byte;
	return (FUNC0((void *)&(character), addr, sizeof(char)) == 0 ? 0 : -1);
}