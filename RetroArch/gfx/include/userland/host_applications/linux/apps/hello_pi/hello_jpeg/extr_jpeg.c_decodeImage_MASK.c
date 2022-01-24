#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {size_t nAllocLen; size_t nFilledLen; scalar_t__ nFlags; scalar_t__ nOffset; int /*<<< orphan*/  pBuffer; } ;
struct TYPE_11__ {size_t inputBufferHeaderCount; TYPE_2__* imageResizer; TYPE_1__* imageDecoder; int /*<<< orphan*/ * pOutputBufferHeader; TYPE_4__** ppInputBufferHeader; } ;
struct TYPE_10__ {int /*<<< orphan*/  outPort; int /*<<< orphan*/  component; int /*<<< orphan*/  handle; } ;
struct TYPE_9__ {int /*<<< orphan*/  outPort; int /*<<< orphan*/  component; int /*<<< orphan*/  handle; } ;
typedef  TYPE_3__ OPENMAX_JPEG_DECODER ;
typedef  TYPE_4__ OMX_BUFFERHEADERTYPE ;

/* Variables and functions */
 int OMXJPEG_ERROR_MEMORY ; 
 int OMXJPEG_OK ; 
 scalar_t__ OMX_BUFFERFLAG_EOS ; 
 int FUNC0 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int OMX_ErrorNone ; 
 int /*<<< orphan*/  OMX_EventBufferFlag ; 
 int /*<<< orphan*/  OMX_EventPortSettingsChanged ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 size_t bufferIndex ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC10(OPENMAX_JPEG_DECODER * decoder, char *sourceImage,
	    size_t imageSize)
{
    char           *sourceOffset = sourceImage;	// we store a separate
						// buffer ot image so we
						// can offset it
    size_t          toread = 0;	// bytes left to read from buffer
    toread += imageSize;
    int             bFilled = 0;	// have we filled our output
					// buffer
    bufferIndex = 0;

    while (toread > 0) {
	// get next buffer from array
	OMX_BUFFERHEADERTYPE *pBufHeader =
	    decoder->ppInputBufferHeader[bufferIndex];

	// step index and reset to 0 if required
	bufferIndex++;
	if (bufferIndex >= decoder->inputBufferHeaderCount)
	    bufferIndex = 0;

	// work out the next chunk to load into the decoder
	if (toread > pBufHeader->nAllocLen)
	    pBufHeader->nFilledLen = pBufHeader->nAllocLen;
	else
	    pBufHeader->nFilledLen = toread;

	toread = toread - pBufHeader->nFilledLen;

	// pass the bytes to the buffer
	FUNC5(pBufHeader->pBuffer, sourceOffset, pBufHeader->nFilledLen);

	// update the buffer pointer and set the input flags

	sourceOffset = sourceOffset + pBufHeader->nFilledLen;
	pBufHeader->nOffset = 0;
	pBufHeader->nFlags = 0;
	if (toread <= 0) {
	    pBufHeader->nFlags = OMX_BUFFERFLAG_EOS;
	}
	// empty the current buffer
	int             ret =
	    FUNC0(decoder->imageDecoder->handle,
				pBufHeader);

	if (ret != OMX_ErrorNone) {
	    FUNC6("Empty input buffer");
	    FUNC2(stderr, "return code %x\n", ret);
	    return OMXJPEG_ERROR_MEMORY;
	}
	// wait for buffer to empty or port changed event
	int             done = 0;
	while ((done == 0) && (decoder->pOutputBufferHeader == NULL)) {
	    if (decoder->pOutputBufferHeader == NULL) {
		ret =
		    FUNC4
		    (decoder->imageDecoder->component,
		     OMX_EventPortSettingsChanged,
		     decoder->imageDecoder->outPort, 0, 0, 1, 0, 5);

		if (ret == 0) {
		    ret = FUNC7(decoder);
		    if (ret != OMXJPEG_OK)
			return ret;
		}
	    } else {
		ret =
		    FUNC3(decoder->imageDecoder->component,
					  OMX_EventPortSettingsChanged,
					  decoder->imageDecoder->outPort,
					  0, 0, 1);
		if (ret == 0)
		    FUNC8(decoder);

	    }

	    // check to see if buffer is now empty
	    if (pBufHeader->nFilledLen == 0)
		done = 1;

	    if ((done == 0)
		|| (decoder->pOutputBufferHeader == NULL))
		FUNC9(1);
	}

	// fill the buffer if we have created the buffer
	if ((bFilled == 0) && (decoder->pOutputBufferHeader != NULL)) {
	    ret = FUNC1(decoder->imageResizer->handle,
				     decoder->pOutputBufferHeader);
	    if (ret != OMX_ErrorNone) {
		FUNC6("Filling output buffer");
		FUNC2(stderr, "Error code %x\n", ret);
		return OMXJPEG_ERROR_MEMORY;
	    }

	    bFilled = 1;
	}
    }

    // wait for buffer to fill
    /*
     * while(pBufHeader->nFilledLen == 0) { sleep(5); }
     */

    // wait for end of stream events
    int             ret =
	FUNC4(decoder->imageDecoder->component,
				OMX_EventBufferFlag,
				decoder->imageDecoder->outPort, 1,
				OMX_BUFFERFLAG_EOS, 1,
				0, 2);
    if (ret != 0) {
	FUNC2(stderr, "No EOS event on image decoder %d\n", ret);
    }
    ret = FUNC4(decoder->imageResizer->component,
				  OMX_EventBufferFlag,
				  decoder->imageResizer->outPort, 1,
				  OMX_BUFFERFLAG_EOS, 1, 0, 2);
    if (ret != 0) {
	FUNC2(stderr, "No EOS event on image resizer %d\n", ret);
    }
    return OMXJPEG_OK;
}