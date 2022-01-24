#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_18__ {TYPE_5__* private_; TYPE_1__* protected_; } ;
struct TYPE_15__ {unsigned int blocksize; } ;
struct TYPE_16__ {TYPE_3__ header; TYPE_2__* subframes; } ;
struct TYPE_17__ {int** output; TYPE_4__ frame; int /*<<< orphan*/  input; } ;
struct TYPE_14__ {unsigned int wasted_bits; } ;
struct TYPE_13__ {scalar_t__ state; } ;
typedef  int FLAC__uint32 ;
typedef  int FLAC__bool ;
typedef  TYPE_6__ FLAC__StreamDecoder ;

/* Variables and functions */
 int /*<<< orphan*/  FLAC__STREAM_DECODER_ERROR_STATUS_LOST_SYNC ; 
 int /*<<< orphan*/  FLAC__STREAM_DECODER_ERROR_STATUS_UNPARSEABLE_STREAM ; 
 scalar_t__ FLAC__STREAM_DECODER_SEARCH_FOR_FRAME_SYNC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,unsigned int,unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,unsigned int,unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,int /*<<< orphan*/ ) ; 

FLAC__bool FUNC7(FLAC__StreamDecoder *decoder, unsigned channel, unsigned bps, FLAC__bool do_full_decode)
{
	FLAC__uint32 x;
	FLAC__bool wasted_bits;
	unsigned i;

	if(!FUNC0(decoder->private_->input, &x, 8)) /* MAGIC NUMBER */
		return false; /* read_callback_ sets the state for us */

	wasted_bits = (x & 1);
	x &= 0xfe;

	if(wasted_bits) {
		unsigned u;
		if(!FUNC1(decoder->private_->input, &u))
			return false; /* read_callback_ sets the state for us */
		decoder->private_->frame.subframes[channel].wasted_bits = u+1;
		if (decoder->private_->frame.subframes[channel].wasted_bits >= bps)
			return false;
		bps -= decoder->private_->frame.subframes[channel].wasted_bits;
	}
	else
		decoder->private_->frame.subframes[channel].wasted_bits = 0;

	/*
	 * Lots of magic numbers here
	 */
	if(x & 0x80) {
		FUNC6(decoder, FLAC__STREAM_DECODER_ERROR_STATUS_LOST_SYNC);
		decoder->protected_->state = FLAC__STREAM_DECODER_SEARCH_FOR_FRAME_SYNC;
		return true;
	}
	else if(x == 0) {
		if(!FUNC2(decoder, channel, bps, do_full_decode))
			return false;
	}
	else if(x == 2) {
		if(!FUNC5(decoder, channel, bps, do_full_decode))
			return false;
	}
	else if(x < 16) {
		FUNC6(decoder, FLAC__STREAM_DECODER_ERROR_STATUS_UNPARSEABLE_STREAM);
		decoder->protected_->state = FLAC__STREAM_DECODER_SEARCH_FOR_FRAME_SYNC;
		return true;
	}
	else if(x <= 24) {
		if(!FUNC3(decoder, channel, bps, (x>>1)&7, do_full_decode))
			return false;
		if(decoder->protected_->state == FLAC__STREAM_DECODER_SEARCH_FOR_FRAME_SYNC) /* means bad sync or got corruption */
			return true;
	}
	else if(x < 64) {
		FUNC6(decoder, FLAC__STREAM_DECODER_ERROR_STATUS_UNPARSEABLE_STREAM);
		decoder->protected_->state = FLAC__STREAM_DECODER_SEARCH_FOR_FRAME_SYNC;
		return true;
	}
	else {
		if(!FUNC4(decoder, channel, bps, ((x>>1)&31)+1, do_full_decode))
			return false;
		if(decoder->protected_->state == FLAC__STREAM_DECODER_SEARCH_FOR_FRAME_SYNC) /* means bad sync or got corruption */
			return true;
	}

	if(wasted_bits && do_full_decode) {
		x = decoder->private_->frame.subframes[channel].wasted_bits;
		for(i = 0; i < decoder->private_->frame.header.blocksize; i++) {
			uint32_t val = decoder->private_->output[channel][i];
			decoder->private_->output[channel][i] = (val << x);
		}
	}

	return true;
}