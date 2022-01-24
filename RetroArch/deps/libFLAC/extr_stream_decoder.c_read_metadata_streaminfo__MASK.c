#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_4__* private_; } ;
struct TYPE_7__ {int /*<<< orphan*/  md5sum; int /*<<< orphan*/  total_samples; void* bits_per_sample; void* channels; void* sample_rate; void* max_framesize; void* min_framesize; void* max_blocksize; void* min_blocksize; } ;
struct TYPE_8__ {TYPE_1__ stream_info; } ;
struct TYPE_9__ {int is_last; unsigned int length; TYPE_2__ data; int /*<<< orphan*/  type; } ;
struct TYPE_10__ {int /*<<< orphan*/  input; TYPE_3__ stream_info; } ;
typedef  void* FLAC__uint32 ;
typedef  int FLAC__bool ;
typedef  TYPE_5__ FLAC__StreamDecoder ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FLAC__METADATA_TYPE_STREAMINFO ; 
 unsigned int FLAC__STREAM_METADATA_STREAMINFO_BITS_PER_SAMPLE_LEN ; 
 unsigned int FLAC__STREAM_METADATA_STREAMINFO_CHANNELS_LEN ; 
 unsigned int FLAC__STREAM_METADATA_STREAMINFO_MAX_BLOCK_SIZE_LEN ; 
 unsigned int FLAC__STREAM_METADATA_STREAMINFO_MAX_FRAME_SIZE_LEN ; 
 unsigned int FLAC__STREAM_METADATA_STREAMINFO_MIN_BLOCK_SIZE_LEN ; 
 unsigned int FLAC__STREAM_METADATA_STREAMINFO_MIN_FRAME_SIZE_LEN ; 
 unsigned int FLAC__STREAM_METADATA_STREAMINFO_SAMPLE_RATE_LEN ; 
 unsigned int FLAC__STREAM_METADATA_STREAMINFO_TOTAL_SAMPLES_LEN ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void**,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned int) ; 

FLAC__bool FUNC6(FLAC__StreamDecoder *decoder, FLAC__bool is_last, unsigned length)
{
	FLAC__uint32 x;
	unsigned bits, used_bits = 0;

	FUNC0(FUNC1(decoder->private_->input));

	decoder->private_->stream_info.type = FLAC__METADATA_TYPE_STREAMINFO;
	decoder->private_->stream_info.is_last = is_last;
	decoder->private_->stream_info.length = length;

	bits = FLAC__STREAM_METADATA_STREAMINFO_MIN_BLOCK_SIZE_LEN;
	if(!FUNC3(decoder->private_->input, &x, bits))
		return false; /* read_callback_ sets the state for us */
	decoder->private_->stream_info.data.stream_info.min_blocksize = x;
	used_bits += bits;

	bits = FLAC__STREAM_METADATA_STREAMINFO_MAX_BLOCK_SIZE_LEN;
	if(!FUNC3(decoder->private_->input, &x, FLAC__STREAM_METADATA_STREAMINFO_MAX_BLOCK_SIZE_LEN))
		return false; /* read_callback_ sets the state for us */
	decoder->private_->stream_info.data.stream_info.max_blocksize = x;
	used_bits += bits;

	bits = FLAC__STREAM_METADATA_STREAMINFO_MIN_FRAME_SIZE_LEN;
	if(!FUNC3(decoder->private_->input, &x, FLAC__STREAM_METADATA_STREAMINFO_MIN_FRAME_SIZE_LEN))
		return false; /* read_callback_ sets the state for us */
	decoder->private_->stream_info.data.stream_info.min_framesize = x;
	used_bits += bits;

	bits = FLAC__STREAM_METADATA_STREAMINFO_MAX_FRAME_SIZE_LEN;
	if(!FUNC3(decoder->private_->input, &x, FLAC__STREAM_METADATA_STREAMINFO_MAX_FRAME_SIZE_LEN))
		return false; /* read_callback_ sets the state for us */
	decoder->private_->stream_info.data.stream_info.max_framesize = x;
	used_bits += bits;

	bits = FLAC__STREAM_METADATA_STREAMINFO_SAMPLE_RATE_LEN;
	if(!FUNC3(decoder->private_->input, &x, FLAC__STREAM_METADATA_STREAMINFO_SAMPLE_RATE_LEN))
		return false; /* read_callback_ sets the state for us */
	decoder->private_->stream_info.data.stream_info.sample_rate = x;
	used_bits += bits;

	bits = FLAC__STREAM_METADATA_STREAMINFO_CHANNELS_LEN;
	if(!FUNC3(decoder->private_->input, &x, FLAC__STREAM_METADATA_STREAMINFO_CHANNELS_LEN))
		return false; /* read_callback_ sets the state for us */
	decoder->private_->stream_info.data.stream_info.channels = x+1;
	used_bits += bits;

	bits = FLAC__STREAM_METADATA_STREAMINFO_BITS_PER_SAMPLE_LEN;
	if(!FUNC3(decoder->private_->input, &x, FLAC__STREAM_METADATA_STREAMINFO_BITS_PER_SAMPLE_LEN))
		return false; /* read_callback_ sets the state for us */
	decoder->private_->stream_info.data.stream_info.bits_per_sample = x+1;
	used_bits += bits;

	bits = FLAC__STREAM_METADATA_STREAMINFO_TOTAL_SAMPLES_LEN;
	if(!FUNC4(decoder->private_->input, &decoder->private_->stream_info.data.stream_info.total_samples, FLAC__STREAM_METADATA_STREAMINFO_TOTAL_SAMPLES_LEN))
		return false; /* read_callback_ sets the state for us */
	used_bits += bits;

	if(!FUNC2(decoder->private_->input, decoder->private_->stream_info.data.stream_info.md5sum, 16))
		return false; /* read_callback_ sets the state for us */
	used_bits += 16*8;

	/* skip the rest of the block */
	FUNC0(used_bits % 8 == 0);
	length -= (used_bits / 8);
	if(!FUNC5(decoder->private_->input, length))
		return false; /* read_callback_ sets the state for us */

	return true;
}