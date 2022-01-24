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
 int argoffset ; 
 int FUNC0 (int,int) ; 

int FUNC1(int align, int size) {
	int n = FUNC0(argoffset, align);

	argoffset = n + size;
	return n;
}