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
typedef  size_t s32 ;
struct TYPE_3__ {scalar_t__ err; int /*<<< orphan*/  triggerR; int /*<<< orphan*/  triggerL; int /*<<< orphan*/  substickY; int /*<<< orphan*/  substickX; int /*<<< orphan*/  stickY; int /*<<< orphan*/  stickX; } ;
typedef  TYPE_1__ PADStatus ;

/* Variables and functions */
 size_t PAD_CHANMAX ; 
 scalar_t__ PAD_ERR_NONE ; 
 int /*<<< orphan*/ * __pad_clampregion ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(PADStatus *status)
{
	s32 i;

	for(i=0;i<PAD_CHANMAX;i++) {
		if(status[i].err==PAD_ERR_NONE) {
			FUNC0(&status[i].stickX,&status[i].stickY,__pad_clampregion[3],__pad_clampregion[4],__pad_clampregion[2]);
			FUNC0(&status[i].substickX,&status[i].substickY,__pad_clampregion[6],__pad_clampregion[7],__pad_clampregion[5]);
			FUNC1(&status[i].triggerL);
			FUNC1(&status[i].triggerR);
		}
	}
}