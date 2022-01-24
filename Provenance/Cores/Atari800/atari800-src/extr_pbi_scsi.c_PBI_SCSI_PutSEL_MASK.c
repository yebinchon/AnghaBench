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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int PBI_SCSI_SEL ; 
 int /*<<< orphan*/  SCSI_PHASE_COMMAND ; 
 scalar_t__ SCSI_PHASE_SELECTION ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int scsi_byte ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ scsi_phase ; 

void FUNC3(int newsel)
{
	if (newsel != PBI_SCSI_SEL) {
		/* SEL changed state */
		PBI_SCSI_SEL = newsel;
		if (PBI_SCSI_SEL && scsi_phase == SCSI_PHASE_SELECTION && scsi_byte == 0x01) {
			FUNC2(SCSI_PHASE_COMMAND);
		}
		FUNC0(FUNC1("changed SEL:%d  scsi_byte:%2x\n",PBI_SCSI_SEL, scsi_byte));
	}
}