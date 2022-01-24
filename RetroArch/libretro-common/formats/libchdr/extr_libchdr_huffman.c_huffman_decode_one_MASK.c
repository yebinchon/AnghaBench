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
typedef  size_t uint32_t ;
struct huffman_decoder {int* lookup; int /*<<< orphan*/  maxbits; } ;
struct bitstream {int dummy; } ;
typedef  int lookup_value ;

/* Variables and functions */
 size_t FUNC0 (struct bitstream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bitstream*,int) ; 

uint32_t FUNC2(struct huffman_decoder* decoder, struct bitstream* bitbuf)
{
	/* peek ahead to get maxbits worth of data */
	uint32_t bits = FUNC0(bitbuf, decoder->maxbits);

	/* look it up, then remove the actual number of bits for this code */
	lookup_value lookup = decoder->lookup[bits];
	FUNC1(bitbuf, lookup & 0x1f);

	/* return the value */
	return lookup >> 5;
}