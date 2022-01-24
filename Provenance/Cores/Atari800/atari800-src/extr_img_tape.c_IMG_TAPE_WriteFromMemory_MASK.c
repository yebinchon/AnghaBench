#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UWORD ;
struct TYPE_5__ {int save_gap; int block_length; int /*<<< orphan*/ * buffer; scalar_t__ was_writing; scalar_t__ next_blockbyte; scalar_t__ savetime; } ;
typedef  TYPE_1__ IMG_TAPE_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ TRUE ; 
 int FUNC3 (TYPE_1__*) ; 

int FUNC4(IMG_TAPE_t *file, UWORD src_addr, int length, int gap)
{
	if (!file->was_writing) {
		file->savetime = 0;
		file->save_gap = 0;
		file->next_blockbyte = 0;
		file->block_length = 0;
		file->was_writing = TRUE;
	}
	FUNC0(file, length + 1);
	/* Put record into buffer. */
	FUNC1(src_addr, file->buffer, length);
	/* Eval checksum over buffer data. */
	file->buffer[length] = FUNC2(file->buffer, length);
	file->save_gap = gap;
	file->block_length = length + 1;
	return FUNC3(file);
}