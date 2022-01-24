#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  decoder; scalar_t__ compressed_offset; } ;
typedef  TYPE_1__ flac_decoder ;

/* Variables and functions */
 scalar_t__ FLAC__STREAM_DECODER_INIT_STATUS_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  flac_decoder_error_callback_static ; 
 int /*<<< orphan*/  flac_decoder_metadata_callback_static ; 
 int /*<<< orphan*/  flac_decoder_read_callback_static ; 
 int /*<<< orphan*/  flac_decoder_tell_callback_static ; 
 int /*<<< orphan*/  flac_decoder_write_callback_static ; 

__attribute__((used)) static int FUNC2(flac_decoder* decoder)
{
	decoder->compressed_offset = 0;
	if (FUNC0(decoder->decoder,
				&flac_decoder_read_callback_static,
				NULL,
				&flac_decoder_tell_callback_static,
				NULL,
				NULL,
				&flac_decoder_write_callback_static,
				&flac_decoder_metadata_callback_static,
				&flac_decoder_error_callback_static, decoder) != FLAC__STREAM_DECODER_INIT_STATUS_OK)
		return 0;
	return FUNC1(decoder->decoder);
}