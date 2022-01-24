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
 int /*<<< orphan*/  PBI_SCSI_disk ; 
 scalar_t__ SCSI_PHASE_COMMAND ; 
 scalar_t__ SCSI_PHASE_DATAIN ; 
 scalar_t__ SCSI_PHASE_DATAOUT ; 
 scalar_t__ SCSI_PHASE_MSGIN ; 
 scalar_t__ SCSI_PHASE_SELECTION ; 
 scalar_t__ SCSI_PHASE_STATUS ; 
 int /*<<< orphan*/  FUNC1 (int*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int* scsi_buffer ; 
 int scsi_bufpos ; 
 int scsi_byte ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int scsi_count ; 
 scalar_t__ scsi_phase ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(void)
{
	if (scsi_phase == SCSI_PHASE_DATAIN) {
		scsi_bufpos++;
		if (scsi_bufpos >= scsi_count) {
			FUNC3(SCSI_PHASE_STATUS);
			scsi_buffer[0] = 0;
		}
	}
	else if (scsi_phase == SCSI_PHASE_STATUS) {
		FUNC0(FUNC2("SCSI status\n"));
		FUNC3(SCSI_PHASE_MSGIN);
		scsi_buffer[0] = 0;
	}
	else if (scsi_phase == SCSI_PHASE_MSGIN) {
		FUNC0(FUNC2("SCSI msg\n"));
		FUNC3(SCSI_PHASE_SELECTION);
	}
	else if (scsi_phase == SCSI_PHASE_COMMAND) {
		scsi_buffer[scsi_bufpos++] = scsi_byte;
		if (scsi_bufpos >= 0x06) {
			FUNC4();
			scsi_bufpos = 0;
		}
	}
	else if (scsi_phase == SCSI_PHASE_DATAOUT) {
		FUNC0(FUNC2("SCSI data out:%2x\n", scsi_byte));
		scsi_buffer[scsi_bufpos++] = scsi_byte;
		if (scsi_bufpos >= scsi_count) {
			FUNC1(scsi_buffer, 1, 256, PBI_SCSI_disk);
			FUNC3(SCSI_PHASE_STATUS);
			scsi_buffer[0] = 0;
		}
	}
}