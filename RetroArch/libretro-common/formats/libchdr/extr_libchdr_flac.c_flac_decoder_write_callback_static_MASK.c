#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  FLAC__int32 ;
typedef  int /*<<< orphan*/  FLAC__StreamDecoderWriteStatus ;
typedef  int /*<<< orphan*/  FLAC__StreamDecoder ;
typedef  int /*<<< orphan*/  FLAC__Frame ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const* const*) ; 

FLAC__StreamDecoderWriteStatus FUNC1(const FLAC__StreamDecoder *decoder, const FLAC__Frame *frame, const FLAC__int32 * const buffer[], void *client_data)
{
	return FUNC0(client_data, frame, buffer);
}