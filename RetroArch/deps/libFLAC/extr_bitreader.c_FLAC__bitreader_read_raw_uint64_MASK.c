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
typedef  int FLAC__uint64 ;
typedef  int FLAC__uint32 ;
typedef  int FLAC__bool ;
typedef  int /*<<< orphan*/  FLAC__BitReader ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int*,unsigned int) ; 

FLAC__bool FUNC1(FLAC__BitReader *br, FLAC__uint64 *val, unsigned bits)
{
	FLAC__uint32 hi, lo;

	if(bits > 32) {
		if(!FUNC0(br, &hi, bits-32))
			return false;
		if(!FUNC0(br, &lo, 32))
			return false;
		*val = hi;
		*val <<= 32;
		*val |= lo;
	}
	else {
		if(!FUNC0(br, &lo, bits))
			return false;
		*val = lo;
	}
	return true;
}