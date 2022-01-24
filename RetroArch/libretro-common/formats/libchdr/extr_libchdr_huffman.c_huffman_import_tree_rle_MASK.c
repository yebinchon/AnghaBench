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
struct huffman_decoder {int maxbits; int numcodes; TYPE_1__* huffnode; } ;
struct bitstream {int dummy; } ;
typedef  enum huffman_error { ____Placeholder_huffman_error } huffman_error ;
struct TYPE_2__ {int numbits; } ;

/* Variables and functions */
 int HUFFERR_INPUT_BUFFER_TOO_SMALL ; 
 int HUFFERR_INVALID_DATA ; 
 int HUFFERR_NONE ; 
 scalar_t__ FUNC0 (struct bitstream*) ; 
 int FUNC1 (struct bitstream*,int) ; 
 int FUNC2 (struct huffman_decoder*) ; 
 int /*<<< orphan*/  FUNC3 (struct huffman_decoder*) ; 

enum huffman_error FUNC4(struct huffman_decoder* decoder, struct bitstream* bitbuf)
{
   enum huffman_error error;
	/* bits per entry depends on the maxbits */
	int numbits;
	int curnode;
	if (decoder->maxbits >= 16)
		numbits = 5;
	else if (decoder->maxbits >= 8)
		numbits = 4;
	else
		numbits = 3;

	/* loop until we read all the nodes */
	for (curnode = 0; curnode < decoder->numcodes; )
	{
		/* a non-one value is just raw */
		int nodebits = FUNC1(bitbuf, numbits);
		if (nodebits != 1)
			decoder->huffnode[curnode++].numbits = nodebits;

		/* a one value is an escape code */
		else
		{
			/* a double 1 is just a single 1 */
			nodebits = FUNC1(bitbuf, numbits);
			if (nodebits == 1)
				decoder->huffnode[curnode++].numbits = nodebits;

			/* otherwise, we need one for value for the repeat count */
			else
			{
				int repcount = FUNC1(bitbuf, numbits) + 3;
				while (repcount--)
					decoder->huffnode[curnode++].numbits = nodebits;
			}
		}
	}

	/* make sure we ended up with the right number */
	if (curnode != decoder->numcodes)
		return HUFFERR_INVALID_DATA;

	/* assign canonical codes for all nodes based on their code lengths */
	error = FUNC2(decoder);
	if (error != HUFFERR_NONE)
		return error;

	/* build the lookup table */
	FUNC3(decoder);

	/* determine final input length and report errors */
	return FUNC0(bitbuf) ? HUFFERR_INPUT_BUFFER_TOO_SMALL : HUFFERR_NONE;
}