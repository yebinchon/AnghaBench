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
struct TYPE_5__ {scalar_t__ buffer; int consumed_bits; } ;
typedef  int /*<<< orphan*/  FLAC__uint32 ;
typedef  int FLAC__bool ;
typedef  TYPE_1__ FLAC__BitReader ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,unsigned int) ; 
 unsigned int FUNC3 (int,unsigned int) ; 

FLAC__bool FUNC4(FLAC__BitReader *br, unsigned bits)
{
	/*
	 * OPT: a faster implementation is possible but probably not that useful
	 * since this is only called a couple of times in the metadata readers.
	 */
	FUNC0(0 != br);
	FUNC0(0 != br->buffer);

	if(bits > 0) {
		const unsigned n = br->consumed_bits & 7;
		unsigned m;
		FLAC__uint32 x;

		if(n != 0) {
			m = FUNC3(8-n, bits);
			if(!FUNC1(br, &x, m))
				return false;
			bits -= m;
		}
		m = bits / 8;
		if(m > 0) {
			if(!FUNC2(br, m))
				return false;
			bits %= 8;
		}
		if(bits > 0) {
			if(!FUNC1(br, &x, bits))
				return false;
		}
	}

	return true;
}