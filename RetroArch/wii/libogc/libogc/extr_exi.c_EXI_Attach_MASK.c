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
typedef  int /*<<< orphan*/  EXICallback ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (size_t,int /*<<< orphan*/ ) ; 
 TYPE_1__* eximap ; 

s32 FUNC4(s32 nChn,EXICallback ext_cb)
{
	s32 ret;
	u32 level;
	exibus_priv *exi = &eximap[nChn];
	FUNC0(nChn);

	FUNC1(level);
	if(exi->exi_idtime) {
		ret = FUNC3(nChn,ext_cb);
	} else
		ret = 0;
	FUNC2(level);
	return ret;
}