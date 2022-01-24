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
 int FUNC0 (int,int) ; 
 int RESERVED_FD_COUNT ; 
 int max_files_per_process ; 

int
FUNC1(void)
{
	return FUNC0((max_files_per_process - RESERVED_FD_COUNT) / 2, 1);
}