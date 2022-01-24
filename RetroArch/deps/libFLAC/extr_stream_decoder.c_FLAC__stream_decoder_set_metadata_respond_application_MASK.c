#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* private_; TYPE_1__* protected_; } ;
struct TYPE_6__ {int metadata_filter_ids_count; int metadata_filter_ids_capacity; int /*<<< orphan*/ * metadata_filter_ids; scalar_t__* metadata_filter; } ;
struct TYPE_5__ {scalar_t__ state; } ;
typedef  int /*<<< orphan*/  FLAC__byte ;
typedef  int FLAC__bool ;
typedef  TYPE_3__ FLAC__StreamDecoder ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FLAC__METADATA_TYPE_APPLICATION ; 
 scalar_t__ FLAC__STREAM_DECODER_MEMORY_ALLOCATION_ERROR ; 
 scalar_t__ FLAC__STREAM_DECODER_UNINITIALIZED ; 
 int FLAC__STREAM_METADATA_APPLICATION_ID_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int) ; 

FLAC__bool FUNC3(FLAC__StreamDecoder *decoder, const FLAC__byte id[4])
{
	FUNC0(0 != decoder);
	FUNC0(0 != decoder->private_);
	FUNC0(0 != decoder->protected_);
	FUNC0(0 != id);
	if(decoder->protected_->state != FLAC__STREAM_DECODER_UNINITIALIZED)
		return false;

	if(decoder->private_->metadata_filter[FLAC__METADATA_TYPE_APPLICATION])
		return true;

	FUNC0(0 != decoder->private_->metadata_filter_ids);

	if(decoder->private_->metadata_filter_ids_count == decoder->private_->metadata_filter_ids_capacity) {
		if(0 == (decoder->private_->metadata_filter_ids = (FLAC__byte*)FUNC2(decoder->private_->metadata_filter_ids, decoder->private_->metadata_filter_ids_capacity, /*times*/2))) {
			decoder->protected_->state = FLAC__STREAM_DECODER_MEMORY_ALLOCATION_ERROR;
			return false;
		}
		decoder->private_->metadata_filter_ids_capacity *= 2;
	}

	FUNC1(decoder->private_->metadata_filter_ids + decoder->private_->metadata_filter_ids_count * (FLAC__STREAM_METADATA_APPLICATION_ID_LEN/8), id, (FLAC__STREAM_METADATA_APPLICATION_ID_LEN/8));
	decoder->private_->metadata_filter_ids_count++;

	return true;
}