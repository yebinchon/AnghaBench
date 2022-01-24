#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
struct huffman_decoder {int numcodes; TYPE_1__* huffnode; } ;
struct bitstream {int dummy; } ;
typedef  enum huffman_error { ____Placeholder_huffman_error } huffman_error ;
struct TYPE_2__ {int numbits; } ;

/* Variables and functions */
 int HUFFERR_INPUT_BUFFER_TOO_SMALL ; 
 int HUFFERR_INVALID_DATA ; 
 int HUFFERR_NONE ; 
 scalar_t__ FUNC0 (struct bitstream*) ; 
 void* FUNC1 (struct bitstream*,int) ; 
 struct huffman_decoder* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct huffman_decoder*) ; 
 int FUNC4 (struct huffman_decoder*) ; 
 int /*<<< orphan*/  FUNC5 (struct huffman_decoder*) ; 
 int FUNC6 (struct huffman_decoder*,struct bitstream*) ; 

enum huffman_error FUNC7(struct huffman_decoder* decoder, struct bitstream* bitbuf)
{
	int last = 0;
	int curcode;
   uint32_t temp;
   enum huffman_error error;
	uint8_t rlefullbits = 0;
	int index, count = 0;
   int start;
	/* start by parsing the lengths for the small tree */
	struct huffman_decoder* smallhuff = FUNC2(24, 6);

	smallhuff->huffnode[0].numbits = FUNC1(bitbuf, 3);
	start = FUNC1(bitbuf, 3) + 1;

	for (index = 1; index < 24; index++)
	{
		if (index < start || count == 7)
			smallhuff->huffnode[index].numbits = 0;
		else
		{
			count = FUNC1(bitbuf, 3);
			smallhuff->huffnode[index].numbits = (count == 7) ? 0 : count;
		}
	}

	/* then regenerate the tree */
	error = FUNC4(smallhuff);
	if (error != HUFFERR_NONE)
		return error;
	FUNC5(smallhuff);

	/* determine the maximum length of an RLE count */
	temp = decoder->numcodes - 9;
	while (temp != 0)
    {
        temp >>= 1;
        rlefullbits++;
    }

	/* now process the rest of the data */
	for (curcode = 0; curcode < decoder->numcodes; )
	{
		int value = FUNC6(smallhuff, bitbuf);
		if (value != 0)
			decoder->huffnode[curcode++].numbits = last = value - 1;
		else
		{
			int count = FUNC1(bitbuf, 3) + 2;
			if (count == 7+2)
				count += FUNC1(bitbuf, rlefullbits);
			for ( ; count != 0 && curcode < decoder->numcodes; count--)
				decoder->huffnode[curcode++].numbits = last;
		}
	}

	/* make sure we ended up with the right number */
	if (curcode != decoder->numcodes)
   {
      FUNC3(smallhuff);
		return HUFFERR_INVALID_DATA;
   }

	/* assign canonical codes for all nodes based on their code lengths */
	error = FUNC4(decoder);
	if (error != HUFFERR_NONE)
   {
      FUNC3(smallhuff);
		return error;
   }

	/* build the lookup table */
	FUNC5(decoder);
	FUNC3(smallhuff);

	/* determine final input length and report errors */
	return FUNC0(bitbuf) ? HUFFERR_INPUT_BUFFER_TOO_SMALL : HUFFERR_NONE;
}