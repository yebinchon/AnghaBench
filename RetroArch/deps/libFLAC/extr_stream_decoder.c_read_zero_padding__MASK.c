#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_2__* protected_; TYPE_1__* private_; } ;
struct TYPE_7__ {int /*<<< orphan*/  state; } ;
struct TYPE_6__ {int /*<<< orphan*/  input; } ;
typedef  scalar_t__ FLAC__uint32 ;
typedef  int FLAC__bool ;
typedef  TYPE_3__ FLAC__StreamDecoder ;

/* Variables and functions */
 int /*<<< orphan*/  FLAC__STREAM_DECODER_ERROR_STATUS_LOST_SYNC ; 
 int /*<<< orphan*/  FLAC__STREAM_DECODER_SEARCH_FOR_FRAME_SYNC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 

FLAC__bool FUNC4(FLAC__StreamDecoder *decoder)
{
	if(!FUNC1(decoder->private_->input)) {
		FLAC__uint32 zero = 0;
		if(!FUNC2(decoder->private_->input, &zero, FUNC0(decoder->private_->input)))
			return false; /* read_callback_ sets the state for us */
		if(zero != 0) {
			FUNC3(decoder, FLAC__STREAM_DECODER_ERROR_STATUS_LOST_SYNC);
			decoder->protected_->state = FLAC__STREAM_DECODER_SEARCH_FOR_FRAME_SYNC;
		}
	}
	return true;
}