#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_6__ {int /*<<< orphan*/  decoder; int /*<<< orphan*/  allocator; } ;
typedef  TYPE_1__ lzma_codec_data ;
typedef  int /*<<< orphan*/  lzma_allocator ;
typedef  int /*<<< orphan*/  decoder_props ;
typedef  int /*<<< orphan*/  chd_error ;
struct TYPE_7__ {int level; int /*<<< orphan*/  reduceSize; } ;
typedef  int /*<<< orphan*/  ISzAlloc ;
typedef  TYPE_2__ CLzmaEncProps ;
typedef  int /*<<< orphan*/  CLzmaEncHandle ;

/* Variables and functions */
 int /*<<< orphan*/  CHDERR_DECOMPRESSION_ERROR ; 
 int /*<<< orphan*/  CHDERR_NONE ; 
 int LZMA_PROPS_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t*) ; 
 scalar_t__ SZ_OK ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

chd_error FUNC9(void* codec, uint32_t hunkbytes)
{
	CLzmaEncProps encoder_props;
   CLzmaEncHandle enc;
	uint8_t decoder_props[LZMA_PROPS_SIZE];
   lzma_allocator* alloc;
   size_t props_size;
	lzma_codec_data* lzma_codec = (lzma_codec_data*) codec;

	/* construct the decoder */
	FUNC1(&lzma_codec->decoder);

	/* FIXME: this code is written in a way that makes it impossible to safely upgrade the LZMA SDK
	 * This code assumes that the current version of the encoder imposes the same requirements on the
	 * decoder as the encoder used to produce the file.  This is not necessarily true.  The format
	 * needs to be changed so the encoder properties are written to the file.

	 * configure the properties like the compressor did */
	FUNC2(&encoder_props);
	encoder_props.level = 9;
	encoder_props.reduceSize = hunkbytes;
	FUNC3(&encoder_props);

	/* convert to decoder properties */
	alloc = &lzma_codec->allocator;
	FUNC8(alloc);
	enc = FUNC4((ISzAlloc*)alloc);
	if (!enc)
		return CHDERR_DECOMPRESSION_ERROR;
	if (FUNC6(enc, &encoder_props) != SZ_OK)
	{
		FUNC5(enc, (ISzAlloc*)&alloc, (ISzAlloc*)&alloc);
		return CHDERR_DECOMPRESSION_ERROR;
	}
	props_size = sizeof(decoder_props);
	if (FUNC7(enc, decoder_props, &props_size) != SZ_OK)
	{
		FUNC5(enc, (ISzAlloc*)alloc, (ISzAlloc*)alloc);
		return CHDERR_DECOMPRESSION_ERROR;
	}
	FUNC5(enc, (ISzAlloc*)alloc, (ISzAlloc*)alloc);

	/* do memory allocations */
	if (FUNC0(&lzma_codec->decoder, decoder_props, LZMA_PROPS_SIZE, (ISzAlloc*)alloc) != SZ_OK)
		return CHDERR_DECOMPRESSION_ERROR;

	/* Okay */
	return CHDERR_NONE;
}