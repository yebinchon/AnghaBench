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
 int /*<<< orphan*/  FUNC0 (char const*,int*) ; 

const char* FUNC1(const char *buf,s32 *thread)
{
	s32 i,nibble,val;

	for(i=0;i<8;i++,buf++)
		if(*buf!='0') return NULL;

	val = 0;
	for(i=0;i<8;i++,buf++) {
		if(!FUNC0(buf,&nibble)) return NULL;

		val = (val<<4)|nibble;
	}

	*thread = val;
	return buf;
}