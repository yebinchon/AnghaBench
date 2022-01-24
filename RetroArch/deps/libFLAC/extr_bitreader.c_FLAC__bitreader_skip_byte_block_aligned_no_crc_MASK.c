#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ buffer; scalar_t__ consumed_words; scalar_t__ words; scalar_t__ consumed_bits; } ;
typedef  int /*<<< orphan*/  FLAC__uint32 ;
typedef  int FLAC__bool ;
typedef  TYPE_1__ FLAC__BitReader ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FLAC__BYTES_PER_WORD ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

FLAC__bool FUNC4(FLAC__BitReader *br, unsigned nvals)
{
	FLAC__uint32 x;

	FUNC0(0 != br);
	FUNC0(0 != br->buffer);
	FUNC0(FUNC1(br));

	/* step 1: skip over partial head word to get word aligned */
	while(nvals && br->consumed_bits) { /* i.e. run until we read 'nvals' bytes or we hit the end of the head word */
		if(!FUNC2(br, &x, 8))
			return false;
		nvals--;
	}
	if(0 == nvals)
		return true;
	/* step 2: skip whole words in chunks */
	while(nvals >= FLAC__BYTES_PER_WORD) {
		if(br->consumed_words < br->words) {
			br->consumed_words++;
			nvals -= FLAC__BYTES_PER_WORD;
		}
		else if(!FUNC3(br))
			return false;
	}
	/* step 3: skip any remainder from partial tail bytes */
	while(nvals) {
		if(!FUNC2(br, &x, 8))
			return false;
		nvals--;
	}

	return true;
}