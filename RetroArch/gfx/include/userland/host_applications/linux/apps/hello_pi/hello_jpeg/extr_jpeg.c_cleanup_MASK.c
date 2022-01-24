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
struct TYPE_7__ {int inputBufferHeaderCount; int /*<<< orphan*/ * client; TYPE_2__* imageResizer; TYPE_1__* imageDecoder; int /*<<< orphan*/ * pOutputBufferHeader; int /*<<< orphan*/ ** ppInputBufferHeader; } ;
struct TYPE_6__ {int /*<<< orphan*/  component; int /*<<< orphan*/  inPort; int /*<<< orphan*/  handle; int /*<<< orphan*/  outPort; } ;
struct TYPE_5__ {int /*<<< orphan*/  component; int /*<<< orphan*/  outPort; int /*<<< orphan*/  handle; int /*<<< orphan*/  inPort; } ;
typedef  TYPE_3__ OPENMAX_JPEG_DECODER ;
typedef  int /*<<< orphan*/  OMX_BUFFERHEADERTYPE ;

/* Variables and functions */
 int /*<<< orphan*/  OMX_CommandFlush ; 
 int /*<<< orphan*/  OMX_CommandPortDisable ; 
 int /*<<< orphan*/  OMX_CommandStateSet ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  OMX_EventCmdComplete ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OMX_StateIdle ; 
 int /*<<< orphan*/  OMX_StateLoaded ; 
 int /*<<< orphan*/  TIMEOUT_MS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC7(OPENMAX_JPEG_DECODER * decoder)
{
    // flush everything through
    FUNC2(decoder->imageDecoder->handle,
		    OMX_CommandFlush, decoder->imageDecoder->outPort,
		    NULL);
    FUNC6(decoder->imageDecoder->component,
			    OMX_EventCmdComplete, OMX_CommandFlush, 0,
			    decoder->imageDecoder->outPort, 0, 0,
			    TIMEOUT_MS);
    FUNC2(decoder->imageResizer->handle, OMX_CommandFlush,
		    decoder->imageResizer->inPort, NULL);
    FUNC6(decoder->imageResizer->component,
			    OMX_EventCmdComplete, OMX_CommandFlush, 0,
			    decoder->imageResizer->inPort, 1, 0,
			    TIMEOUT_MS);

    FUNC2(decoder->imageDecoder->handle, OMX_CommandPortDisable,
		    decoder->imageDecoder->inPort, NULL);

    int             i = 0;
    for (i = 0; i < decoder->inputBufferHeaderCount; i++) {
	OMX_BUFFERHEADERTYPE *vpBufHeader =
	    decoder->ppInputBufferHeader[i];

	FUNC1(decoder->imageDecoder->handle,
		       decoder->imageDecoder->inPort, vpBufHeader);
    }

    FUNC6(decoder->imageDecoder->component,
			    OMX_EventCmdComplete, OMX_CommandPortDisable,
			    0, decoder->imageDecoder->inPort, 0, 0,
			    TIMEOUT_MS);

    FUNC2(decoder->imageResizer->handle, OMX_CommandPortDisable,
		    decoder->imageResizer->outPort, NULL);

    FUNC1(decoder->imageResizer->handle,
		   decoder->imageResizer->outPort,
		   decoder->pOutputBufferHeader);

    FUNC6(decoder->imageResizer->component,
			    OMX_EventCmdComplete, OMX_CommandPortDisable,
			    0, decoder->imageResizer->outPort, 0, 0,
			    TIMEOUT_MS);

    FUNC2(decoder->imageDecoder->handle, OMX_CommandPortDisable,
		    decoder->imageDecoder->outPort, NULL);
    FUNC6(decoder->imageDecoder->component,
			    OMX_EventCmdComplete, OMX_CommandPortDisable,
			    0, decoder->imageDecoder->outPort, 0, 0,
			    TIMEOUT_MS);

    FUNC2(decoder->imageResizer->handle, OMX_CommandPortDisable,
		    decoder->imageResizer->inPort, NULL);
    FUNC6(decoder->imageResizer->component,
			    OMX_EventCmdComplete, OMX_CommandPortDisable,
			    0, decoder->imageResizer->inPort, 0, 0,
			    TIMEOUT_MS);

    FUNC3(decoder->imageDecoder->handle,
		    decoder->imageDecoder->outPort, NULL, 0);
    FUNC3(decoder->imageResizer->handle,
		    decoder->imageResizer->inPort, NULL, 0);

    FUNC4(decoder->imageDecoder->component,
				    OMX_StateIdle);
    FUNC4(decoder->imageResizer->component,
				    OMX_StateIdle);

    FUNC6(decoder->imageDecoder->component,
			    OMX_EventCmdComplete, OMX_CommandStateSet, 0,
			    OMX_StateIdle, 0, 0, TIMEOUT_MS);
    FUNC6(decoder->imageResizer->component,
			    OMX_EventCmdComplete, OMX_CommandStateSet, 0,
			    OMX_StateIdle, 0, 0, TIMEOUT_MS);

    FUNC4(decoder->imageDecoder->component,
				    OMX_StateLoaded);
    FUNC4(decoder->imageResizer->component,
				    OMX_StateLoaded);

    FUNC6(decoder->imageDecoder->component,
			    OMX_EventCmdComplete, OMX_CommandStateSet, 0,
			    OMX_StateLoaded, 0, 0, TIMEOUT_MS);
    FUNC6(decoder->imageResizer->component,
			    OMX_EventCmdComplete, OMX_CommandStateSet, 0,
			    OMX_StateLoaded, 0, 0, TIMEOUT_MS);

    FUNC0();

    if (decoder->client != NULL) {
	FUNC5(decoder->client);
    }
}