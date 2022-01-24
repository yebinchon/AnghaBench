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
typedef  int brword ;
struct TYPE_3__ {int* buffer; int consumed_bits; int crc16_align; size_t consumed_words; int /*<<< orphan*/  read_crc16; } ;
typedef  int /*<<< orphan*/  FLAC__uint16 ;
typedef  TYPE_1__ FLAC__BitReader ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FLAC__BITS_PER_WORD ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 

FLAC__uint16 FUNC2(FLAC__BitReader *br)
{
	FUNC0(0 != br);
	FUNC0(0 != br->buffer);
	FUNC0((br->consumed_bits & 7) == 0);
	FUNC0(br->crc16_align <= br->consumed_bits);

	/* CRC any tail bytes in a partially-consumed word */
	if(br->consumed_bits) {
		const brword tail = br->buffer[br->consumed_words];
		for( ; br->crc16_align < br->consumed_bits; br->crc16_align += 8)
			br->read_crc16 = FUNC1((unsigned)((tail >> (FLAC__BITS_PER_WORD-8-br->crc16_align)) & 0xff), br->read_crc16);
	}
	return br->read_crc16;
}