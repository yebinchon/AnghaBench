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
typedef  unsigned int brword ;
struct TYPE_5__ {unsigned int* buffer; int capacity; size_t consumed_words; size_t words; int bytes; int consumed_bits; } ;
typedef  unsigned int FLAC__uint32 ;
typedef  int FLAC__bool ;
typedef  TYPE_1__ FLAC__BitReader ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FLAC__BITS_PER_WORD ; 
 unsigned int const FLAC__WORD_ALL_ONES ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,unsigned int const) ; 

FLAC__bool FUNC3(FLAC__BitReader *br, FLAC__uint32 *val, unsigned bits)
{
	FUNC0(0 != br);
	FUNC0(0 != br->buffer);

	FUNC0(bits <= 32);
	FUNC0((br->capacity*FLAC__BITS_PER_WORD) * 2 >= bits);
	FUNC0(br->consumed_words <= br->words);

	/* WATCHOUT: code does not work with <32bit words; we can make things much faster with this assertion */
	FUNC0(FLAC__BITS_PER_WORD >= 32);

	if(bits == 0) { /* OPT: investigate if this can ever happen, maybe change to assertion */
		*val = 0;
		return true;
	}

	while((br->words-br->consumed_words)*FLAC__BITS_PER_WORD + br->bytes*8 - br->consumed_bits < bits) {
		if(!FUNC1(br))
			return false;
	}
	if(br->consumed_words < br->words) { /* if we've not consumed up to a partial tail word... */
		/* OPT: taking out the consumed_bits==0 "else" case below might make things faster if less code allows the compiler to inline this function */
		if(br->consumed_bits) {
			/* this also works when consumed_bits==0, it's just a little slower than necessary for that case */
			const unsigned n = FLAC__BITS_PER_WORD - br->consumed_bits;
			const brword word = br->buffer[br->consumed_words];
			if(bits < n) {
				*val = (FLAC__uint32)((word & (FLAC__WORD_ALL_ONES >> br->consumed_bits)) >> (n-bits)); /* The result has <= 32 non-zero bits */
				br->consumed_bits += bits;
				return true;
			}
			/* (FLAC__BITS_PER_WORD - br->consumed_bits <= bits) ==> (FLAC__WORD_ALL_ONES >> br->consumed_bits) has no more than 'bits' non-zero bits */
			*val = (FLAC__uint32)(word & (FLAC__WORD_ALL_ONES >> br->consumed_bits));
			bits -= n;
			FUNC2(br, word);
			br->consumed_words++;
			br->consumed_bits = 0;
			if(bits) { /* if there are still bits left to read, there have to be less than 32 so they will all be in the next word */
				*val <<= bits;
				*val |= (FLAC__uint32)(br->buffer[br->consumed_words] >> (FLAC__BITS_PER_WORD-bits));
				br->consumed_bits = bits;
			}
			return true;
		}
		else { /* br->consumed_bits == 0 */
			const brword word = br->buffer[br->consumed_words];
			if(bits < FLAC__BITS_PER_WORD) {
				*val = (FLAC__uint32)(word >> (FLAC__BITS_PER_WORD-bits));
				br->consumed_bits = bits;
				return true;
			}
			/* at this point bits == FLAC__BITS_PER_WORD == 32; because of previous assertions, it can't be larger */
			*val = (FLAC__uint32)word;
			FUNC2(br, word);
			br->consumed_words++;
			return true;
		}
	}
	else {
		/* in this case we're starting our read at a partial tail word;
		 * the reader has guaranteed that we have at least 'bits' bits
		 * available to read, which makes this case simpler.
		 */
		/* OPT: taking out the consumed_bits==0 "else" case below might make things faster if less code allows the compiler to inline this function */
		if(br->consumed_bits) {
			/* this also works when consumed_bits==0, it's just a little slower than necessary for that case */
			FUNC0(br->consumed_bits + bits <= br->bytes*8);
			*val = (FLAC__uint32)((br->buffer[br->consumed_words] & (FLAC__WORD_ALL_ONES >> br->consumed_bits)) >> (FLAC__BITS_PER_WORD-br->consumed_bits-bits));
			br->consumed_bits += bits;
			return true;
		}
		else {
			*val = (FLAC__uint32)(br->buffer[br->consumed_words] >> (FLAC__BITS_PER_WORD-bits));
			br->consumed_bits += bits;
			return true;
		}
	}
}