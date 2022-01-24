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
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int UINT32 ;
struct TYPE_2__ {int* writebuff0; int writebuffsel; int* writebuff1; } ;
typedef  int INT32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JOB940_PICOSTATELOAD2 ; 
 int /*<<< orphan*/  JOB940_PICOSTATELOAD2_PREP ; 
 int /*<<< orphan*/  JOB940_YM2612UPDATEONE ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 TYPE_1__* shared_ctl ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int writebuff_ptr ; 

int FUNC5(int *tat, int *tbt)
{
	UINT8 *ym_remote_regs, *ym_local_regs;
	ym_local_regs  = FUNC1();
	ym_remote_regs = (UINT8 *) shared_ctl->writebuff0;

	if (*(UINT32 *)(ym_local_regs + 0x100) != 0x41534d59)
		return -1;

	*tat = *(INT32 *)(ym_local_regs + 0x108);
	*tbt = *(INT32 *)(ym_local_regs + 0x10c);

	if (FUNC0(JOB940_YM2612UPDATEONE)) FUNC4(JOB940_YM2612UPDATEONE);

	/* flush writes */
	if (shared_ctl->writebuffsel == 1) {
		shared_ctl->writebuff0[writebuff_ptr & 0xffff] = 0xffff;
	} else {
		shared_ctl->writebuff1[writebuff_ptr & 0xffff] = 0xffff;
	}
	shared_ctl->writebuffsel ^= 1;
	writebuff_ptr = 0;
	FUNC2(JOB940_PICOSTATELOAD2_PREP);
	if (FUNC0(JOB940_PICOSTATELOAD2_PREP)) FUNC4(JOB940_PICOSTATELOAD2_PREP);

	FUNC3(ym_remote_regs, ym_local_regs, 0x200);

	FUNC2(JOB940_PICOSTATELOAD2);
	if (FUNC0(JOB940_PICOSTATELOAD2)) FUNC4(JOB940_PICOSTATELOAD2);

	return 0;
}