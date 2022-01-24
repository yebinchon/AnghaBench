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
typedef  int /*<<< orphan*/  FLAC__byte ;
typedef  int /*<<< orphan*/  FLAC__StreamDecoderReadStatus ;
typedef  int /*<<< orphan*/  FLAC__StreamDecoder ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ *,size_t*) ; 

FLAC__StreamDecoderReadStatus FUNC1(const FLAC__StreamDecoder *decoder, FLAC__byte buffer[], size_t *bytes, void *client_data)
{
	return FUNC0(client_data, buffer, bytes);
}