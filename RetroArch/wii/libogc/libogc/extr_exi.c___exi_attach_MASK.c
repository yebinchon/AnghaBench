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
struct TYPE_3__ {int flags; int /*<<< orphan*/  CallbackEXT; } ;
typedef  TYPE_1__ exibus_priv ;
typedef  int /*<<< orphan*/  EXICallback ;

/* Variables and functions */
 int EXI_FLAG_ATTACH ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_EXI0_EXT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (size_t,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (size_t) ; 
 TYPE_1__* eximap ; 

__attribute__((used)) static s32 FUNC6(s32 nChn,EXICallback ext_cb)
{
	s32 ret;
	u32 level;
	exibus_priv *exi = &eximap[nChn];
	FUNC1(level);
	ret = 0;
	if(!(exi->flags&EXI_FLAG_ATTACH)) {
		if(FUNC5(nChn)==1) {
			FUNC4(nChn,1,0,0);
			exi->CallbackEXT = ext_cb;
			FUNC3(((FUNC0(IRQ_EXI0_EXT))>>(nChn*3)));
			exi->flags |= EXI_FLAG_ATTACH;
			ret = 1;
		}
	}
	FUNC2(level);
	return ret;
}