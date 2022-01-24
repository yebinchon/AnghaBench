#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_3__ {int flags; int /*<<< orphan*/  checksum_inv; int /*<<< orphan*/  checksum; } ;
typedef  TYPE_1__ syssram ;
struct TYPE_4__ {int offset; int sync; int /*<<< orphan*/  enabled; scalar_t__ locked; scalar_t__ srambuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (scalar_t__,int,int) ; 
 TYPE_2__ sramcntrl ; 

__attribute__((used)) static u32 FUNC3(u32 write,u32 loc)
{
	syssram *sram = (syssram*)sramcntrl.srambuf;

	if(write) {
		if(!loc) {
			if((sram->flags&0x03)>0x02) sram->flags = (sram->flags&~0x03);
			FUNC1((u16*)sramcntrl.srambuf,&sram->checksum,&sram->checksum_inv);
		}
		if(loc<sramcntrl.offset) sramcntrl.offset = loc;

		sramcntrl.sync = FUNC2(sramcntrl.srambuf+sramcntrl.offset,sramcntrl.offset,(64-sramcntrl.offset));
		if(sramcntrl.sync) sramcntrl.offset = 64;
	}
	sramcntrl.locked = 0;
	FUNC0(sramcntrl.enabled);
	return sramcntrl.sync;
}