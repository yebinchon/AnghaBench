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
struct TYPE_6__ {scalar_t__ metadata_filter_ids_count; int /*<<< orphan*/  metadata_filter; } ;
struct TYPE_5__ {scalar_t__ state; } ;
typedef  int FLAC__bool ;
typedef  TYPE_3__ FLAC__StreamDecoder ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FLAC__STREAM_DECODER_UNINITIALIZED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

FLAC__bool FUNC2(FLAC__StreamDecoder *decoder)
{
	FUNC0(0 != decoder);
	FUNC0(0 != decoder->private_);
	FUNC0(0 != decoder->protected_);
	if(decoder->protected_->state != FLAC__STREAM_DECODER_UNINITIALIZED)
		return false;
	FUNC1(decoder->private_->metadata_filter, 0, sizeof(decoder->private_->metadata_filter));
	decoder->private_->metadata_filter_ids_count = 0;
	return true;
}