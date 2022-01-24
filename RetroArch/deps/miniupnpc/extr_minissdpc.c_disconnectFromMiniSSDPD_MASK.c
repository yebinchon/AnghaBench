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
 int MINISSDPC_SOCKET_ERROR ; 
 int MINISSDPC_SUCCESS ; 
 scalar_t__ FUNC0 (int) ; 

int
FUNC1(int s)
{
	if (FUNC0(s) < 0)
		return MINISSDPC_SOCKET_ERROR;
	return MINISSDPC_SUCCESS;
}