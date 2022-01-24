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
typedef  void u8 ;
typedef  int u32 ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(void *val,s32 len)
{
	u32 roundlen;
	s32 missalign;
	u8 *ptr = val;

	if(!val || len<=0) return;

	missalign = -((u32)val)&0x1f;
	if((s32)(len-missalign)<32) {
		FUNC1(val,len);
		return;
	}

	if(missalign>0) {
		FUNC1(ptr,missalign);
		len -= missalign;
		ptr += missalign;
	}

	roundlen = (len&~0x1f);
	FUNC0(ptr,roundlen);
	FUNC2(ptr,roundlen,NULL);
	FUNC3();

	len -= roundlen;
	ptr += roundlen;
	if(len>0) FUNC1(ptr,len);
}