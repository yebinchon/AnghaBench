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
typedef  int s32 ;
struct TYPE_4__ {int state; int cmd; int /*<<< orphan*/  offset; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ DVD_ERROR_UNRECOVERABLE_READ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ DVD_STATUS_COVER_OPENED ; 
 scalar_t__ DVD_STATUS_DISK_CHANGE ; 
 scalar_t__ DVD_STATUS_NO_DISK ; 
 int /*<<< orphan*/  FALSE ; 
 int FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 TYPE_1__* __dvd_executing ; 
 int /*<<< orphan*/  __dvd_extensionsenabled ; 
 scalar_t__ __dvd_lasterror ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  __dvd_stateretrycb ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  __dvd_unrecoverederrorcb ; 
 int* _diReg ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static void FUNC15(s32 result)
{
	s32 ret;
	u32 val,cnclpt;
	if(result==0x0010) {
		__dvd_executing->state = -1;
		FUNC12();
		return;
	}
	if(result&0x0002) {
		__dvd_executing->state = -1;
		FUNC9(0x01234567);
		return;
	}
	if(result==0x0001) {
		val = _diReg[8];
		ret = FUNC4(val);
		if(ret==1) {
			__dvd_executing->state = -1;
			FUNC9(val);
			return;
		} else if(ret==2 || ret==3) cnclpt = 0;
		else {
			if(FUNC3(val)==DVD_STATUS_COVER_OPENED) cnclpt = 4;
			else if(FUNC3(val)==DVD_STATUS_DISK_CHANGE) cnclpt = 6;
			else if(FUNC3(val)==DVD_STATUS_NO_DISK) cnclpt = 3;
			else cnclpt = 5;
		}
		if(FUNC5(cnclpt)) return;

		if(ret==2) {
			if(FUNC14(val)) {
				// disable the extensions iff they're enabled and we were trying to read the disc ID
				if(__dvd_executing->cmd==0x05) {
					__dvd_lasterror = 0;
					__dvd_extensionsenabled = FALSE;
					FUNC2(__dvd_stateretrycb);
					return;
				}
				FUNC7(__dvd_executing);
			} else {
				FUNC13(val);
				FUNC10();
			}
			return;
		} else if(ret==3) {
			if(FUNC0(val)==DVD_ERROR_UNRECOVERABLE_READ) {
				FUNC1(__dvd_executing->offset,__dvd_unrecoverederrorcb);
				return;
			} else {
				FUNC6(__dvd_executing);
				return;
			}
		} else if(FUNC3(val)==DVD_STATUS_COVER_OPENED) {
			__dvd_executing->state = 5;
			FUNC11();
			return;
		} else if(FUNC3(val)==DVD_STATUS_DISK_CHANGE) {
			__dvd_executing->state = 3;
			FUNC8();
			return;
		} else if(FUNC3(val)==DVD_STATUS_NO_DISK) {
			__dvd_executing->state = 4;
			FUNC11();
			return;
		}
		__dvd_executing->state = -1;
		FUNC9(0x01234567);
		return;
	}
}