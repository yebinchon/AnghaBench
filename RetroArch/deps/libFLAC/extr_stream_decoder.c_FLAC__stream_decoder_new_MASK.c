#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ input; int metadata_filter_ids_capacity; int has_seek_table; int /*<<< orphan*/  state; struct TYPE_7__* protected_; scalar_t__ file; struct TYPE_7__* private_; int /*<<< orphan*/ * partitioned_rice_contents; scalar_t__ output_channels; scalar_t__ output_capacity; scalar_t__* residual; scalar_t__* residual_unaligned; scalar_t__* output; int /*<<< orphan*/ * metadata_filter_ids; } ;
typedef  int /*<<< orphan*/  FLAC__byte ;
typedef  TYPE_1__ FLAC__StreamDecoderProtected ;
typedef  TYPE_1__ FLAC__StreamDecoderPrivate ;
typedef  TYPE_1__ FLAC__StreamDecoder ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FLAC__MAX_CHANNELS ; 
 int /*<<< orphan*/  FLAC__STREAM_DECODER_UNINITIALIZED ; 
 int FLAC__STREAM_METADATA_APPLICATION_ID_LEN ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

FLAC__StreamDecoder *FUNC8(void)
{
	FLAC__StreamDecoder *decoder;
	unsigned i;

	FUNC0(sizeof(int) >= 4); /* we want to die right away if this is not true */

	decoder = (FLAC__StreamDecoder*)FUNC4(1, sizeof(FLAC__StreamDecoder));
	if(decoder == 0) {
		return 0;
	}

	decoder->protected_ = (FLAC__StreamDecoderProtected*)FUNC4(1, sizeof(FLAC__StreamDecoderProtected));
	if(decoder->protected_ == 0) {
		FUNC5(decoder);
		return 0;
	}

	decoder->private_ = (FLAC__StreamDecoderPrivate*)FUNC4(1, sizeof(FLAC__StreamDecoderPrivate));
	if(decoder->private_ == 0) {
		FUNC5(decoder->protected_);
		FUNC5(decoder);
		return 0;
	}

	decoder->private_->input = FUNC2();
	if(decoder->private_->input == 0) {
		FUNC5(decoder->private_);
		FUNC5(decoder->protected_);
		FUNC5(decoder);
		return 0;
	}

	decoder->private_->metadata_filter_ids_capacity = 16;
	if(0 == (decoder->private_->metadata_filter_ids = (FLAC__byte*)FUNC6((FLAC__STREAM_METADATA_APPLICATION_ID_LEN/8) * decoder->private_->metadata_filter_ids_capacity))) {
		FUNC1(decoder->private_->input);
		FUNC5(decoder->private_);
		FUNC5(decoder->protected_);
		FUNC5(decoder);
		return 0;
	}

	for(i = 0; i < FLAC__MAX_CHANNELS; i++) {
		decoder->private_->output[i] = 0;
		decoder->private_->residual_unaligned[i] = decoder->private_->residual[i] = 0;
	}

	decoder->private_->output_capacity = 0;
	decoder->private_->output_channels = 0;
	decoder->private_->has_seek_table = false;

	for(i = 0; i < FLAC__MAX_CHANNELS; i++)
		FUNC3(&decoder->private_->partitioned_rice_contents[i]);

	decoder->private_->file = 0;

	FUNC7(decoder);

	decoder->protected_->state = FLAC__STREAM_DECODER_UNINITIALIZED;

	return decoder;
}