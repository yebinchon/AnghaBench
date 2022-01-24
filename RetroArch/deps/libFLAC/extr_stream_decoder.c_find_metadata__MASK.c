#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_2__* protected_; TYPE_1__* private_; } ;
struct TYPE_8__ {int /*<<< orphan*/  state; } ;
struct TYPE_7__ {int cached; void** header_warmup; void* lookahead; int /*<<< orphan*/  input; } ;
typedef  int FLAC__uint32 ;
typedef  void* FLAC__byte ;
typedef  int FLAC__bool ;
typedef  TYPE_3__ FLAC__StreamDecoder ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FLAC__STREAM_DECODER_ERROR_STATUS_LOST_SYNC ; 
 int /*<<< orphan*/  FLAC__STREAM_DECODER_READ_FRAME ; 
 int /*<<< orphan*/  FLAC__STREAM_DECODER_READ_METADATA ; 
 int* FLAC__STREAM_SYNC_STRING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*,int) ; 
 int* ID3V2_TAG_ ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 

FLAC__bool FUNC5(FLAC__StreamDecoder *decoder)
{
	FLAC__uint32 x;
	unsigned i, id;
	FLAC__bool first = true;

	FUNC0(FUNC1(decoder->private_->input));

	for(i = id = 0; i < 4; ) {
		if(decoder->private_->cached) {
			x = (FLAC__uint32)decoder->private_->lookahead;
			decoder->private_->cached = false;
		}
		else {
			if(!FUNC2(decoder->private_->input, &x, 8))
				return false; /* read_callback_ sets the state for us */
		}
		if(x == FLAC__STREAM_SYNC_STRING[i]) {
			first = true;
			i++;
			id = 0;
			continue;
		}

		if(id >= 3)
			return false;

		if(x == ID3V2_TAG_[id]) {
			id++;
			i = 0;
			if(id == 3) {
				if(!FUNC4(decoder))
					return false; /* skip_id3v2_tag_ sets the state for us */
			}
			continue;
		}
		id = 0;
		if(x == 0xff) { /* MAGIC NUMBER for the first 8 frame sync bits */
			decoder->private_->header_warmup[0] = (FLAC__byte)x;
			if(!FUNC2(decoder->private_->input, &x, 8))
				return false; /* read_callback_ sets the state for us */

			/* we have to check if we just read two 0xff's in a row; the second may actually be the beginning of the sync code */
			/* else we have to check if the second byte is the end of a sync code */
			if(x == 0xff) { /* MAGIC NUMBER for the first 8 frame sync bits */
				decoder->private_->lookahead = (FLAC__byte)x;
				decoder->private_->cached = true;
			}
			else if(x >> 1 == 0x7c) { /* MAGIC NUMBER for the last 6 sync bits and reserved 7th bit */
				decoder->private_->header_warmup[1] = (FLAC__byte)x;
				decoder->protected_->state = FLAC__STREAM_DECODER_READ_FRAME;
				return true;
			}
		}
		i = 0;
		if(first) {
			FUNC3(decoder, FLAC__STREAM_DECODER_ERROR_STATUS_LOST_SYNC);
			first = false;
		}
	}

	decoder->protected_->state = FLAC__STREAM_DECODER_READ_METADATA;
	return true;
}