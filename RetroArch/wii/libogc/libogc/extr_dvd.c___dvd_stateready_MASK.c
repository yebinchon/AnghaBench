#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int state; int /*<<< orphan*/  cmd; int /*<<< orphan*/  (* cb ) (int,TYPE_1__*) ;} ;
typedef  TYPE_1__ dvdcmdblk ;

/* Variables and functions */
 int /*<<< orphan*/  __dvd_cancellasterror ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  __dvd_currcmd ; 
 TYPE_1__ __dvd_dummycmdblk ; 
 TYPE_1__* __dvd_executing ; 
 scalar_t__ __dvd_fatalerror ; 
 TYPE_1__* FUNC1 () ; 
 int __dvd_resumefromhere ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int,TYPE_1__*) ; 

void FUNC7()
{
	dvdcmdblk *block;
	if(!FUNC0()) {
		__dvd_executing = NULL;
		return;
	}

	__dvd_executing = FUNC1();

	if(__dvd_fatalerror) {
		__dvd_executing->state = -1;
		block = __dvd_executing;
		__dvd_executing = &__dvd_dummycmdblk;
		if(block->cb) block->cb(-1,block);
		FUNC7();
		return;
	}

	__dvd_currcmd = __dvd_executing->cmd;

	if(__dvd_resumefromhere) {
		if(__dvd_resumefromhere<=7) {
			switch(__dvd_resumefromhere) {
				case 1:
					__dvd_executing->state = 6;
					FUNC5();
					break;
				case 2:
					__dvd_executing->state = 11;
					FUNC5();
					break;
				case 3:
					__dvd_executing->state = 4;
					FUNC5();
					break;
				case 4:
					__dvd_executing->state = 5;
					FUNC5();
					break;
				case 5:
					__dvd_executing->state = -1;
					FUNC4(__dvd_cancellasterror);
					break;
				case 6:
					__dvd_executing->state = 3;
					FUNC3();
					break;
				case 7:
					__dvd_executing->state = 7;
					FUNC5();
					break;
				default:
					break;

			}
		}
		__dvd_resumefromhere = 0;
		return;
	}
	__dvd_executing->state = 1;
	FUNC2(__dvd_executing);
}