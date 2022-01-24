#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  int16_t ;
typedef  scalar_t__ chd_error ;
struct TYPE_2__ {int /*<<< orphan*/ * buffer; int /*<<< orphan*/  decoder; int /*<<< orphan*/  subcode_decompressor; int /*<<< orphan*/  swap_endian; } ;
typedef  TYPE_1__ cdfl_codec_data ;

/* Variables and functions */
 int CD_FRAME_SIZE ; 
 int CD_MAX_SECTOR_DATA ; 
 int CD_MAX_SUBCODE_DATA ; 
 scalar_t__ CHDERR_DECOMPRESSION_ERROR ; 
 scalar_t__ CHDERR_NONE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *,int) ; 

chd_error FUNC6(void *codec, const uint8_t *src, uint32_t complen, uint8_t *dest, uint32_t destlen)
{
	uint32_t framenum;
   uint8_t *buffer;
#ifdef WANT_SUBCODE
   uint32_t offset;
   chd_error ret;
#endif
	cdfl_codec_data *cdfl = (cdfl_codec_data*)codec;

	/* reset and decode */
	uint32_t frames = destlen / CD_FRAME_SIZE;

	if (!FUNC3(&cdfl->decoder, 44100, 2, FUNC0(frames * CD_MAX_SECTOR_DATA), src, complen))
		return CHDERR_DECOMPRESSION_ERROR;
	buffer = &cdfl->buffer[0];
	if (!FUNC1(&cdfl->decoder, (int16_t *)(buffer), frames * CD_MAX_SECTOR_DATA/4, cdfl->swap_endian))
		return CHDERR_DECOMPRESSION_ERROR;

#ifdef WANT_SUBCODE
	/* inflate the subcode data */
	offset = flac_decoder_finish(&cdfl->decoder);
	ret = zlib_codec_decompress(&cdfl->subcode_decompressor, src + offset, complen - offset, &cdfl->buffer[frames * CD_MAX_SECTOR_DATA], frames * CD_MAX_SUBCODE_DATA);
	if (ret != CHDERR_NONE)
		return ret;
#else
	FUNC2(&cdfl->decoder);
#endif

	/* reassemble the data */
	for (framenum = 0; framenum < frames; framenum++)
	{
		FUNC4(&dest[framenum * CD_FRAME_SIZE], &cdfl->buffer[framenum * CD_MAX_SECTOR_DATA], CD_MAX_SECTOR_DATA);
#ifdef WANT_SUBCODE
		memcpy(&dest[framenum * CD_FRAME_SIZE + CD_MAX_SECTOR_DATA], &cdfl->buffer[frames * CD_MAX_SECTOR_DATA + framenum * CD_MAX_SUBCODE_DATA], CD_MAX_SUBCODE_DATA);
#endif
	}

	return CHDERR_NONE;
}