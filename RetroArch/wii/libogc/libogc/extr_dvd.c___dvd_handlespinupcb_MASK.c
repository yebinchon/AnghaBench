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
typedef  int u32 ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void (*) (int)) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/  (*) (int)) ; 
 int /*<<< orphan*/  FUNC2 (int,void (*) (int)) ; 
 int DVD_SPINMOTOR_ACCEPT ; 
 int DVD_SPINMOTOR_UP ; 
 scalar_t__ DVD_STATUS_DISK_ID_NOT_READ ; 
 int FUNC3 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  __dvd_extensionsenabled ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  __dvd_lasterror ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/ * _diReg ; 

__attribute__((used)) static void FUNC7(s32 result)
{
	static u32 step = 0;
	if(result==0x0010) {
		FUNC6();
		return;
	}
	if(result==0x0001) {
		if(step==0x0000) {
			step++;
			_diReg[1] = _diReg[1];
			FUNC0(__dvd_extensionsenabled,__dvd_handlespinupcb);
			return;
		}
		if(step==0x0001) {
			step++;
			_diReg[1] = _diReg[1];
			FUNC2((DVD_SPINMOTOR_ACCEPT|DVD_SPINMOTOR_UP),__dvd_handlespinupcb);
			return;
		}
		if(step==0x0002) {
			step = 0;
			if(!__dvd_lasterror) {
				_diReg[1] = _diReg[1];
				FUNC1((FUNC3((DVD_STATUS_DISK_ID_NOT_READ+1),16,8)|0x00000300),__dvd_finalsudcb);
				return;
			}
			FUNC4(result);
			return;
		}
	}

	step = 0;
	FUNC5();
}