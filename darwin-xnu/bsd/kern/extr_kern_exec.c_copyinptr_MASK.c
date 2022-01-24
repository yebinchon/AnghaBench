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
typedef  unsigned int user_addr_t ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int,unsigned int*,int) ; 

__attribute__((used)) static int
FUNC2(user_addr_t froma, user_addr_t *toptr, int ptr_size)
{
	int error;

	if (ptr_size == 4) {
		/* 64 bit value containing 32 bit address */
		unsigned int i;

		error = FUNC1(froma, &i, 4);
		*toptr = FUNC0(i);	/* SAFE */
	} else {
		error = FUNC1(froma, toptr, 8);
	}
	return (error);
}