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
typedef  int u32 ;
struct _lck_dev {int dev; int /*<<< orphan*/  (* unlockcb ) (size_t,int) ;int /*<<< orphan*/  node; } ;
typedef  size_t s32 ;
struct TYPE_4__ {int flags; int lckd_dev_bits; int /*<<< orphan*/  lckd_dev; int /*<<< orphan*/  lck_cnt; } ;
typedef  TYPE_1__ exibus_priv ;
typedef  int /*<<< orphan*/  (* EXICallback ) (size_t,int) ;

/* Variables and functions */
 int EXI_FLAG_LOCKED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (size_t,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  _lckdev_queue ; 
 TYPE_1__* eximap ; 

s32 FUNC5(s32 nChn)
{
	u32 level,dev;
	EXICallback cb;
	struct _lck_dev *lckd;
	exibus_priv *exi = &eximap[nChn];
	FUNC0(level);
	if(!(exi->flags&EXI_FLAG_LOCKED)) {
		FUNC1(level);
		return 0;
	}

	exi->flags &= ~EXI_FLAG_LOCKED;
	FUNC2(nChn,exi);

	if(!exi->lck_cnt) {
		FUNC1(level);
		return 1;
	}

	exi->lck_cnt--;
	lckd = (struct _lck_dev*)FUNC4(&exi->lckd_dev);
	FUNC3(&_lckdev_queue,&lckd->node);

	cb = lckd->unlockcb;
	dev = lckd->dev;
	exi->lckd_dev_bits &= ~(1<<dev);
	if(cb) cb(nChn,dev);

	FUNC1(level);
	return 1;
}