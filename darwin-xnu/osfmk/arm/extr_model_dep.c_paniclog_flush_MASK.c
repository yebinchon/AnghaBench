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
struct TYPE_2__ {scalar_t__ eph_other_log_offset; scalar_t__ eph_other_log_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ debug_buf_ptr ; 
 scalar_t__ gPanicBase ; 
 TYPE_1__* panic_info ; 

void
FUNC4()
{
	unsigned int panicbuf_length = 0;

	panicbuf_length = (unsigned int)(debug_buf_ptr - gPanicBase);
	if (!panicbuf_length)
		return;

	/*
	 * Updates the log length of the last part of the panic log.
	 */
	panic_info->eph_other_log_len = FUNC1(debug_buf_ptr) - panic_info->eph_other_log_offset;

	/*
	 * Updates the metadata at the beginning of the panic buffer,
	 * updates the CRC.
	 */
	FUNC2((unsigned char *)gPanicBase, &panicbuf_length);

	/*
	 * This is currently unused by platform KEXTs on embedded but is
	 * kept for compatibility with the published IOKit interfaces.
	 */
	FUNC0((unsigned char *)gPanicBase, panicbuf_length);

	FUNC3();
}