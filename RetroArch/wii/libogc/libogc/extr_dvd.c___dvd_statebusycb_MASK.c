#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int s32 ;
struct TYPE_14__ {int state; int txdsize; int currtxsize; scalar_t__ len; int /*<<< orphan*/  (* cb ) (int,TYPE_1__*) ;int /*<<< orphan*/  offset; } ;
typedef  TYPE_1__ dvdcmdblk ;

/* Variables and functions */
 int DVD_CHIPPRESENT ; 
 int DVD_DISKIDSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,void (*) (int)) ; 
 scalar_t__ __dvd_autofinishing ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ __dvd_canceling ; 
 scalar_t__ FUNC2 (int) ; 
 int __dvd_currcmd ; 
 int __dvd_drivestate ; 
 TYPE_1__ __dvd_dummycmdblk ; 
 TYPE_1__* __dvd_executing ; 
 scalar_t__ __dvd_internalretries ; 
 int __dvd_resetrequired ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int* _diReg ; 
 int /*<<< orphan*/  FUNC9 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (int,TYPE_1__*) ; 

__attribute__((used)) static void FUNC17(s32 result)
{
	u32 val;
	dvdcmdblk *block;
	if(result==0x0010) {
		__dvd_executing->state = -1;
		FUNC8();
		return;
	}
	if(__dvd_currcmd==0x0003 || __dvd_currcmd==0x000f) {
		if(result&0x0002) {
			__dvd_executing->state = -1;
			FUNC4(0x01234567);
			return;
		}
		if(result==0x0001) {
			__dvd_internalretries = 0;
			if(__dvd_currcmd==0x000f) __dvd_resetrequired = 1;
			if(FUNC2(7)) return;

			__dvd_executing->state = 7;
			FUNC6();
			return;
		}
	}
	if(result&0x0004) {

	}
	if(__dvd_currcmd==0x0001 || __dvd_currcmd==0x0004
		|| __dvd_currcmd==0x0005 || __dvd_currcmd==0x000e) {
		__dvd_executing->txdsize += (__dvd_executing->currtxsize-_diReg[6]);
	}
	if(result&0x0008) {
		__dvd_canceling = 0;
		block = __dvd_executing;
		__dvd_executing = &__dvd_dummycmdblk;
		__dvd_executing->state = 10;
		if(block->cb) block->cb(-3,block);
		if(&__dvd_cancelcallback) FUNC1(0,block);
		FUNC7();
		return;
	}
	if(result&0x0001) {
		__dvd_internalretries = 0;
		if(FUNC2(0)) return;

		if(__dvd_currcmd==0x0001 || __dvd_currcmd==0x0004
			|| __dvd_currcmd==0x0005 || __dvd_currcmd==0x000e) {
			if(__dvd_executing->txdsize!=__dvd_executing->len) {
				FUNC3(__dvd_executing);
				return;
			}
			block = __dvd_executing;
			__dvd_executing = &__dvd_dummycmdblk;
			block->state = 0;
			if(block->cb) block->cb(block->txdsize,block);
			FUNC7();
			return;
		}
		if(__dvd_currcmd==0x0009 || __dvd_currcmd==0x000a
			|| __dvd_currcmd==0x000b || __dvd_currcmd==0x000c) {

			val = _diReg[8];
			if(__dvd_currcmd==0x000a || __dvd_currcmd==0x000b) val <<= 2;

			block = __dvd_executing;
			__dvd_executing = &__dvd_dummycmdblk;
			block->state = 0;
			if(block->cb) block->cb(val,block);
			FUNC7();
			return;
		}
		if(__dvd_currcmd==0x0006) {
			if(!__dvd_executing->currtxsize) {
				if(_diReg[8]&0x0001) {
					block = __dvd_executing;
					__dvd_executing = &__dvd_dummycmdblk;
					block->state = 9;
					if(block->cb) block->cb(-2,block);
					FUNC7();
					return;
				}
				__dvd_autofinishing = 0;
				__dvd_executing->currtxsize = 1;
				FUNC0(0,__dvd_executing->len,__dvd_executing->offset,__dvd_statebusycb);
				return;
			}

			block = __dvd_executing;
			__dvd_executing = &__dvd_dummycmdblk;
			block->state = 0;
			if(block->cb) block->cb(0,block);
			FUNC7();
			return;
		}
		if(__dvd_currcmd==0x0010) {
			if(__dvd_drivestate&DVD_CHIPPRESENT) {
				block = __dvd_executing;
				__dvd_executing = &__dvd_dummycmdblk;
				block->state = 0;
				if(block->cb) block->cb(DVD_DISKIDSIZE,block);
				FUNC7();
				return;
			}
		}

		block = __dvd_executing;
		__dvd_executing = &__dvd_dummycmdblk;
		block->state = 0;
		if(block->cb) block->cb(0,block);
		FUNC7();
		return;
	}
	if(result==0x0002) {
		if(__dvd_currcmd==0x000e) {
			__dvd_executing->state = -1;
			FUNC4(0x01234567);
			return;
		}
		if((__dvd_currcmd==0x0001 || __dvd_currcmd==0x0004
			|| __dvd_currcmd==0x0005 || __dvd_currcmd==0x000e)
			&& __dvd_executing->txdsize==__dvd_executing->len) {
				if(FUNC2(0)) return;

				block = __dvd_executing;
				__dvd_executing = &__dvd_dummycmdblk;
				block->state = 0;
				if(block->cb) block->cb(block->txdsize,block);
				FUNC7();
				return;
		}
	}
	FUNC5();
}