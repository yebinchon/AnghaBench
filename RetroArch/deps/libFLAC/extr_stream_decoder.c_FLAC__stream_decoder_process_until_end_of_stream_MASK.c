#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* protected_; } ;
struct TYPE_8__ {int state; } ;
typedef  int FLAC__bool ;
typedef  TYPE_2__ FLAC__StreamDecoder ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  FLAC__STREAM_DECODER_ABORTED 133 
#define  FLAC__STREAM_DECODER_END_OF_STREAM 132 
#define  FLAC__STREAM_DECODER_READ_FRAME 131 
#define  FLAC__STREAM_DECODER_READ_METADATA 130 
#define  FLAC__STREAM_DECODER_SEARCH_FOR_FRAME_SYNC 129 
#define  FLAC__STREAM_DECODER_SEARCH_FOR_METADATA 128 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

FLAC__bool FUNC5(FLAC__StreamDecoder *decoder)
{
	FLAC__bool dummy;
	FUNC0(0 != decoder);
	FUNC0(0 != decoder->protected_);

	while(1) {
		switch(decoder->protected_->state) {
			case FLAC__STREAM_DECODER_SEARCH_FOR_METADATA:
				if(!FUNC1(decoder))
					return false; /* above function sets the status for us */
				break;
			case FLAC__STREAM_DECODER_READ_METADATA:
				if(!FUNC4(decoder))
					return false; /* above function sets the status for us */
				break;
			case FLAC__STREAM_DECODER_SEARCH_FOR_FRAME_SYNC:
				if(!FUNC2(decoder))
					return true; /* above function sets the status for us */
				break;
			case FLAC__STREAM_DECODER_READ_FRAME:
				if(!FUNC3(decoder, &dummy, /*do_full_decode=*/true))
					return false; /* above function sets the status for us */
				break;
			case FLAC__STREAM_DECODER_END_OF_STREAM:
			case FLAC__STREAM_DECODER_ABORTED:
				return true;
			default:
				FUNC0(0);
				return false;
		}
	}
}