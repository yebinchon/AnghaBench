#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  mtxIdxHi; int /*<<< orphan*/  mtxIdxLo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__* __gx ; 

__attribute__((used)) static void FUNC2(u32 mtx)
{
	if(mtx<5) {
		FUNC0(0x30,__gx->mtxIdxLo);
		FUNC1(0x1018,__gx->mtxIdxLo);
	} else {
		FUNC0(0x40,__gx->mtxIdxHi);
		FUNC1(0x1019,__gx->mtxIdxHi);
	}
}