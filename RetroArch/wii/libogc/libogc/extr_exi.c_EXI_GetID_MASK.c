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
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  size_t s32 ;
struct TYPE_3__ {scalar_t__ exi_idtime; int /*<<< orphan*/  exi_id; } ;
typedef  TYPE_1__ exibus_priv ;

/* Variables and functions */
 size_t EXI_CHANNEL_2 ; 
 size_t EXI_DEVICE_0 ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (size_t,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 size_t FUNC3 (size_t,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EXI_READ ; 
 int /*<<< orphan*/  EXI_SPEED1MHZ ; 
 int FUNC4 (size_t,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (size_t) ; 
 int /*<<< orphan*/  EXI_WRITE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (size_t) ; 
 int /*<<< orphan*/ * __unlocked_handler ; 
 TYPE_1__* eximap ; 
 scalar_t__* last_exi_idtime ; 

s32 FUNC11(s32 nChn,s32 nDev,u32 *nId)
{
	u64 idtime = 0;
	s32 ret,lck;
	u32 reg,level;
	exibus_priv *exi = &eximap[nChn];

	if(nChn<EXI_CHANNEL_2 && nDev==EXI_DEVICE_0) {
		if(FUNC10(nChn)==0) return 0;
		if(exi->exi_idtime==last_exi_idtime[nChn]) {
			*nId = exi->exi_id;
			return 1;
		}
		if(FUNC9(nChn,NULL)==0) return 0;
		idtime = last_exi_idtime[nChn];
	}
	lck = 0;
	if(nChn<EXI_CHANNEL_2 && nDev==EXI_DEVICE_0) lck = 1;

	if(lck)  ret = FUNC3(nChn,nDev,__unlocked_handler);
	else ret = FUNC3(nChn,nDev,NULL);

	if(ret) {
		if(FUNC4(nChn,nDev,EXI_SPEED1MHZ)==1) {
			reg = 0;
			FUNC2(nChn,&reg,2,EXI_WRITE,NULL);
			FUNC5(nChn);
			FUNC2(nChn,nId,4,EXI_READ,NULL);
			FUNC5(nChn);
			FUNC0(nChn);
			FUNC6(nChn);
		}
	}

	if(nChn<EXI_CHANNEL_2 && nDev==EXI_DEVICE_0) {
		ret = 0;
		FUNC1(nChn);

		FUNC7(level);
		if(idtime==last_exi_idtime[nChn]) {
			exi->exi_idtime = idtime;
			exi->exi_id = *nId;
			ret = 1;
		}
		FUNC8(level);
	}
	return ret;
}