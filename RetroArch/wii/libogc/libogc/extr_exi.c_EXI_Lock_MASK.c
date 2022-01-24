#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct _lck_dev {size_t dev; int /*<<< orphan*/  node; scalar_t__ unlockcb; } ;
typedef  size_t s32 ;
struct TYPE_4__ {int flags; int lckd_dev_bits; size_t lockeddev; int /*<<< orphan*/  lckd_dev; int /*<<< orphan*/  lck_cnt; } ;
typedef  TYPE_1__ exibus_priv ;
typedef  scalar_t__ EXICallback ;

/* Variables and functions */
 int EXI_FLAG_LOCKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (size_t,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  _lckdev_queue ; 
 TYPE_1__* eximap ; 

s32 FUNC5(s32 nChn,s32 nDev,EXICallback unlockCB)
{
	u32 level;
	struct _lck_dev *lckd;
	exibus_priv *exi = &eximap[nChn];
	FUNC0(level);
	if(exi->flags&EXI_FLAG_LOCKED) {
		if(unlockCB && !(exi->lckd_dev_bits&(1<<nDev))) {
			lckd = (struct _lck_dev*)FUNC4(&_lckdev_queue);
			if(lckd) {
				exi->lck_cnt++;
				exi->lckd_dev_bits |= (1<<nDev);
				lckd->dev = nDev;
				lckd->unlockcb = unlockCB;
				FUNC3(&exi->lckd_dev,&lckd->node);
			}
		}
		FUNC1(level);
		return 0;
	}

	exi->lockeddev = nDev;
	exi->flags |= EXI_FLAG_LOCKED;
	FUNC2(nChn,exi);

	FUNC1(level);
	return 1;
}