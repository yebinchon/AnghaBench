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
struct TYPE_3__ {int size; scalar_t__ line; int /*<<< orphan*/  label; int /*<<< orphan*/  file; scalar_t__ printed; struct TYPE_3__* next; } ;
typedef  TYPE_1__ hunkblock_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* hunkblocks ; 
 int /*<<< orphan*/  logfile ; 
 scalar_t__ qfalse ; 
 scalar_t__ qtrue ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void FUNC5( void) {
	hunkblock_t	*block, *block2;
	char		buf[4096];
	int size, locsize, numBlocks;

	if (!logfile || !FUNC1())
		return;
	for (block = hunkblocks ; block; block = block->next) {
		block->printed = qfalse;
	}
	size = 0;
	numBlocks = 0;
	FUNC0(buf, sizeof(buf), "\r\n================\r\nHunk Small log\r\n================\r\n");
	FUNC2(buf, FUNC4(buf), logfile);
	for (block = hunkblocks; block; block = block->next) {
		if (block->printed) {
			continue;
		}
		locsize = block->size;
		for (block2 = block->next; block2; block2 = block2->next) {
			if (block->line != block2->line) {
				continue;
			}
			if (FUNC3(block->file, block2->file)) {
				continue;
			}
			size += block2->size;
			locsize += block2->size;
			block2->printed = qtrue;
		}
#ifdef HUNK_DEBUG
		Com_sprintf(buf, sizeof(buf), "size = %8d: %s, line: %d (%s)\r\n", locsize, block->file, block->line, block->label);
		FS_Write(buf, strlen(buf), logfile);
#endif
		size += block->size;
		numBlocks++;
	}
	FUNC0(buf, sizeof(buf), "%d Hunk memory\r\n", size);
	FUNC2(buf, FUNC4(buf), logfile);
	FUNC0(buf, sizeof(buf), "%d hunk blocks\r\n", numBlocks);
	FUNC2(buf, FUNC4(buf), logfile);
}