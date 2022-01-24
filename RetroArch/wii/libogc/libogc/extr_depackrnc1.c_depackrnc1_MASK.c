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
typedef  unsigned long s32 ;
typedef  int /*<<< orphan*/  huf_table ;
typedef  int /*<<< orphan*/  bit_stream ;

/* Variables and functions */
 unsigned long RNC_FILE_IS_NOT_RNC ; 
 unsigned long RNC_FILE_SIZE_MISMATCH ; 
 unsigned long RNC_HUF_DECODE_ERROR ; 
 unsigned long RNC_PACKED_CRC_ERROR ; 
 long RNC_SIGNATURE ; 
 unsigned long RNC_UNPACKED_CRC_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,unsigned char**) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ *,int,int,unsigned char**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char**) ; 
 long FUNC4 (unsigned char*) ; 
 unsigned int FUNC5 (unsigned char*) ; 
 long FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned char**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned char**) ; 
 unsigned int FUNC8 (unsigned char*,unsigned long) ; 

s32 FUNC9(void *packed,void *unpacked)
{
    unsigned char *input = packed;
    unsigned char *output = unpacked;
    unsigned char *inputend, *outputend;
    bit_stream bs;
    huf_table raw, dist, len;
    unsigned long ch_count;
    unsigned long ret_len;
    unsigned out_crc;

    if (FUNC4(input) != RNC_SIGNATURE)
	return RNC_FILE_IS_NOT_RNC;
    ret_len = FUNC4 (input+4);
    outputend = output + ret_len;
    inputend = input + 18 + FUNC4(input+8);

    input += 18;		       /* skip header */

    /*
     * Check the packed-data CRC. Also save the unpacked-data CRC
     * for later.
     */
    if (FUNC8(input, inputend-input) != FUNC5(input-4))
	return RNC_PACKED_CRC_ERROR;
    out_crc = FUNC5(input-6);

    FUNC3 (&bs, &input);
    FUNC0 (&bs, 2, &input);      /* discard first two bits */

    /*
     * Process chunks.
     */
    while (output < outputend) {
		FUNC7 (&raw, &bs, &input);
		FUNC7 (&dist, &bs, &input);
		FUNC7 (&len, &bs, &input);
		ch_count = FUNC1 (&bs, 0xFFFF, 16, &input);

		while (1) {
			long length, posn;

			length = FUNC6 (&raw, &bs, &input);
			if (length == -1)
			return RNC_HUF_DECODE_ERROR;
			if (length) {
			while (length--)
				*output++ = *input++;
			FUNC2 (&bs, &input);
			}
			if (--ch_count <= 0)
			break;

			posn = FUNC6 (&dist, &bs, &input);
			if (posn == -1)
			return RNC_HUF_DECODE_ERROR;
			length = FUNC6 (&len, &bs, &input);
			if (length == -1)
			return RNC_HUF_DECODE_ERROR;
			posn += 1;
			length += 2;
			while (length--) {
			*output = output[-posn];
			output++;
			}
		}
    }
    if (outputend != output)
	return RNC_FILE_SIZE_MISMATCH;

    if (FUNC8(outputend-ret_len, ret_len) != out_crc)
	return RNC_UNPACKED_CRC_ERROR;

    return ret_len;
}