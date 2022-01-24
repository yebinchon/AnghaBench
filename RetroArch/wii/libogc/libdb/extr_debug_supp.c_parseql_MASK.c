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
typedef  int s32 ;

/* Variables and functions */
 char* FUNC0 (char const*,int*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int*) ; 

s32 FUNC3(const char *in,s32 *first,s32 *max_cnt,s32 *athread)
{
	const char *ptr;

	ptr = in+2;
	if(!FUNC2(ptr,first)) return 0;

	ptr++;
	if(!FUNC1(ptr,max_cnt)) return 0;

	ptr += 2;
	ptr = FUNC0(ptr,athread);
	if(ptr==NULL) return 0;

	return 1;
}