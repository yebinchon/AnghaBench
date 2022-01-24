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
struct TYPE_5__ {int block_length; int next_blockbyte; scalar_t__* buffer; scalar_t__ was_writing; } ;
typedef  TYPE_1__ IMG_TAPE_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int*) ; 
 scalar_t__ FUNC3 (scalar_t__*,int) ; 

int FUNC4(IMG_TAPE_t *file, UWORD dest_addr, int length)
{
	int read_length;
	if (file->was_writing) {
		FUNC0(file);
		file->was_writing = FALSE;
	}
	read_length = file->block_length - file->next_blockbyte;

	if (read_length == 0) {
		/* No bytes left in current block, need to read next block. */
		int gap;
		if (!FUNC2(file, &gap))
			/* EOF or read error */
			return -1;
		file->block_length = read_length;
		file->next_blockbyte = 0;
	}
	/* Copy record to memory, excluding the checksum byte if it exists. */
	FUNC1(file->buffer + file->next_blockbyte, dest_addr, read_length >= length ? length : read_length);
	file->next_blockbyte += (read_length >= length + 1 ? length + 1 : read_length);
	return read_length >= length + 1 &&
	       file->buffer[length] == FUNC3(file->buffer, length);
}