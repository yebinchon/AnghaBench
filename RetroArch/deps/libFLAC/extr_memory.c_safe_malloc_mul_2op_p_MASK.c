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
 size_t SIZE_MAX ; 
 void* FUNC0 (size_t) ; 

void *FUNC1(size_t size1, size_t size2)
{
	if(!size1 || !size2)
		return FUNC0(1); /* malloc(0) is undefined; FLAC src convention is to always allocate */
	if(size1 > SIZE_MAX / size2)
		return 0;
	return FUNC0(size1*size2);
}