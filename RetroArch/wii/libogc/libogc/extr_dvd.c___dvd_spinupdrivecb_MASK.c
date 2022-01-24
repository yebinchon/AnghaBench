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
typedef  int s32 ;

/* Variables and functions */
 int DVD_CHIPPRESENT ; 
 int DVD_DRIVERESET ; 
 int DVD_INTEROPER ; 
 int /*<<< orphan*/  DVD_RESETHARD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void (*) (int)) ; 
 int /*<<< orphan*/  __dvd_drivechecked ; 
 int __dvd_drivestate ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (void (*) (int)) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(s32 result)
{
	if(result==0x0010) {
		FUNC6();
		return;
	}
	if(result==0x0001) {
		if(!__dvd_drivechecked) {
			FUNC1(__dvd_spinupdrivecb);
			return;
		}
		if(!(__dvd_drivestate&DVD_CHIPPRESENT)) {
			if(!(__dvd_drivestate&DVD_INTEROPER)) {
				if(!(__dvd_drivestate&DVD_DRIVERESET)) {
					FUNC0(DVD_RESETHARD);
					FUNC7(1150*1000);
				}
				FUNC3(__dvd_spinupdrivecb);
				return;
			}
			FUNC4();
			return;
		}

		FUNC2(result);
		return;
	}
	FUNC5();
}