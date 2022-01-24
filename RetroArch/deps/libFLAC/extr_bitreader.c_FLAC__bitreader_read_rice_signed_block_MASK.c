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
typedef  unsigned int brword ;
struct TYPE_6__ {unsigned int* buffer; unsigned int consumed_words; unsigned int words; int consumed_bits; } ;
typedef  unsigned int FLAC__uint32 ;
typedef  int FLAC__bool ;
typedef  TYPE_1__ FLAC__BitReader ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FLAC__BITS_PER_WORD ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,unsigned int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,unsigned int) ; 

FLAC__bool FUNC5(FLAC__BitReader *br, int vals[], unsigned nvals, unsigned parameter)
{
	/* try and get br->consumed_words and br->consumed_bits into register;
	 * must remember to flush them back to *br before calling other
	 * bitreader functions that use them, and before returning */
	unsigned cwords, words, lsbs, msbs, x, y;
	unsigned ucbits; /* keep track of the number of unconsumed bits in word */
	brword b;
	int *val, *end;

	FUNC1(0 != br);
	FUNC1(0 != br->buffer);
	/* WATCHOUT: code does not work with <32bit words; we can make things much faster with this assertion */
	FUNC1(FLAC__BITS_PER_WORD >= 32);
	FUNC1(parameter < 32);
	/* the above two asserts also guarantee that the binary part never straddles more than 2 words, so we don't have to loop to read it */

	val = vals;
	end = vals + nvals;

	if(parameter == 0) {
		while(val < end) {
			/* read the unary MSBs and end bit */
			if(!FUNC3(br, &msbs))
				return false;

			*val++ = (int)(msbs >> 1) ^ -(int)(msbs & 1);
		}

		return true;
	}

	FUNC1(parameter > 0);

	cwords = br->consumed_words;
	words = br->words;

	/* if we've not consumed up to a partial tail word... */
	if(cwords >= words) {
		x = 0;
		goto process_tail;
	}

	ucbits = FLAC__BITS_PER_WORD - br->consumed_bits;
	b = br->buffer[cwords] << br->consumed_bits;  /* keep unconsumed bits aligned to left */

	while(val < end) {
		/* read the unary MSBs and end bit */
		x = y = FUNC0(b);
		if(x == FLAC__BITS_PER_WORD) {
			x = ucbits;
			do {
				/* didn't find stop bit yet, have to keep going... */
				FUNC4(br, br->buffer[cwords++]);
				if (cwords >= words)
					goto incomplete_msbs;
				b = br->buffer[cwords];
				y = FUNC0(b);
				x += y;
			} while(y == FLAC__BITS_PER_WORD);
		}
		b <<= y;
		b <<= 1; /* account for stop bit */
		ucbits = (ucbits - x - 1) % FLAC__BITS_PER_WORD;
		msbs = x;

		/* read the binary LSBs */
		x = (FLAC__uint32)(b >> (FLAC__BITS_PER_WORD - parameter)); /* parameter < 32, so we can cast to 32-bit unsigned */
		if(parameter <= ucbits) {
			ucbits -= parameter;
			b <<= parameter;
		} else {
			/* there are still bits left to read, they will all be in the next word */
			FUNC4(br, br->buffer[cwords++]);
			if (cwords >= words)
				goto incomplete_lsbs;
			b = br->buffer[cwords];
			ucbits += FLAC__BITS_PER_WORD - parameter;
			x |= (FLAC__uint32)(b >> ucbits);
			b <<= FLAC__BITS_PER_WORD - ucbits;
		}
		lsbs = x;

		/* compose the value */
		x = (msbs << parameter) | lsbs;
		*val++ = (int)(x >> 1) ^ -(int)(x & 1);

		continue;

		/* at this point we've eaten up all the whole words */
process_tail:
		do {
			if(0) {
incomplete_msbs:
				br->consumed_bits = 0;
				br->consumed_words = cwords;
			}

			/* read the unary MSBs and end bit */
			if(!FUNC3(br, &msbs))
				return false;
			msbs += x;
			x = ucbits = 0;

			if(0) {
incomplete_lsbs:
				br->consumed_bits = 0;
				br->consumed_words = cwords;
			}

			/* read the binary LSBs */
			if(!FUNC2(br, &lsbs, parameter - ucbits))
				return false;
			lsbs = x | lsbs;

			/* compose the value */
			x = (msbs << parameter) | lsbs;
			*val++ = (int)(x >> 1) ^ -(int)(x & 1);
			x = 0;

			cwords = br->consumed_words;
			words = br->words;
			ucbits = FLAC__BITS_PER_WORD - br->consumed_bits;
			b = br->buffer[cwords] << br->consumed_bits;
		} while(cwords >= words && val < end);
	}

	if(ucbits == 0 && cwords < words) {
		/* don't leave the head word with no unconsumed bits */
		FUNC4(br, br->buffer[cwords++]);
		ucbits = FLAC__BITS_PER_WORD;
	}

	br->consumed_bits = FLAC__BITS_PER_WORD - ucbits;
	br->consumed_words = cwords;

	return true;
}