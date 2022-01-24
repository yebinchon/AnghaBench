#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  size_t s32 ;
struct TYPE_3__ {scalar_t__ exi_idtime; } ;
typedef  TYPE_1__ exibus_priv ;

/* Variables and functions */
 int /*<<< orphan*/  EXI_DEVICE_0 ; 
 scalar_t__ FUNC0 (size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 size_t FUNC1 (size_t) ; 
 TYPE_1__* eximap ; 

s32 FUNC2(s32 nChn)
{
	s32 ret;
	u32 id;
	exibus_priv *exi = &eximap[nChn];
	if((ret=FUNC1(nChn))==1) {
		if(exi->exi_idtime==0) {
			if(FUNC0(nChn,EXI_DEVICE_0,&id)==0) ret = 0;
		}
	}
	return ret;
}