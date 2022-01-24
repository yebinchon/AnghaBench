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
typedef  size_t u32 ;

/* Variables and functions */
 int /*<<< orphan*/  BYTE_ADDRESSING ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 size_t MAX_DRIVE ; 
 int /*<<< orphan*/  NOT_INITIALIZED ; 
 int /*<<< orphan*/  TYPE_SD ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * _initType ; 
 int /*<<< orphan*/ * _ioAddressingType ; 
 int /*<<< orphan*/ * _ioCardInserted ; 
 int /*<<< orphan*/ * _ioEXILock ; 
 scalar_t__* _ioError ; 
 int /*<<< orphan*/ * _ioFlag ; 
 scalar_t__ _ioRetryCnt ; 

void FUNC3()
{
	u32 i;
	FUNC2();
	FUNC1();
	for(i=0;i<MAX_DRIVE;++i) {
		_ioRetryCnt = 0;
		_ioError[i] = 0;
		_ioCardInserted[i] = FALSE;
		_ioFlag[i] = NOT_INITIALIZED;
		_ioAddressingType[i] = BYTE_ADDRESSING;
		_initType[i] = TYPE_SD;
		FUNC0(&_ioEXILock[i]);
	}
}