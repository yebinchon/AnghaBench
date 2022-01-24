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
struct TYPE_3__ {scalar_t__ buffer; int consumed_bits; unsigned int read_crc16; int crc16_align; } ;
typedef  scalar_t__ FLAC__uint16 ;
typedef  TYPE_1__ FLAC__BitReader ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

void FUNC1(FLAC__BitReader *br, FLAC__uint16 seed)
{
	FUNC0(0 != br);
	FUNC0(0 != br->buffer);
	FUNC0((br->consumed_bits & 7) == 0);

	br->read_crc16 = (unsigned)seed;
	br->crc16_align = br->consumed_bits;
}