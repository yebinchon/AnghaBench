#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {unsigned int nFrameWidth; unsigned int nFrameHeight; scalar_t__ eColorFormat; int /*<<< orphan*/  bFlagErrorConcealment; scalar_t__ nSliceHeight; scalar_t__ nStride; int /*<<< orphan*/  eCompressionFormat; } ;
struct TYPE_15__ {TYPE_4__ image; } ;
struct TYPE_12__ {void* nVersion; } ;
struct TYPE_17__ {int nSize; int nBufferSize; TYPE_5__ format; int /*<<< orphan*/  nPortIndex; TYPE_2__ nVersion; } ;
struct TYPE_16__ {TYPE_3__* imageResizer; int /*<<< orphan*/  pOutputBufferHeader; TYPE_1__* imageDecoder; } ;
struct TYPE_13__ {int /*<<< orphan*/  outPort; int /*<<< orphan*/  component; int /*<<< orphan*/  handle; int /*<<< orphan*/  inPort; } ;
struct TYPE_11__ {int /*<<< orphan*/  outPort; int /*<<< orphan*/  component; int /*<<< orphan*/  handle; } ;
typedef  TYPE_6__ OPENMAX_JPEG_DECODER ;
typedef  TYPE_7__ OMX_PARAM_PORTDEFINITIONTYPE ;

/* Variables and functions */
 int OMXJPEG_ERROR_MEMORY ; 
 int OMXJPEG_OK ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ OMX_COLOR_Format32bitABGR8888 ; 
 int /*<<< orphan*/  OMX_CommandPortEnable ; 
 int /*<<< orphan*/  OMX_CommandStateSet ; 
 int OMX_ErrorNone ; 
 int /*<<< orphan*/  OMX_EventCmdComplete ; 
 int /*<<< orphan*/  OMX_EventPortSettingsChanged ; 
 int /*<<< orphan*/  OMX_FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_7__*) ; 
 int /*<<< orphan*/  OMX_IMAGE_CodingUnused ; 
 int /*<<< orphan*/  OMX_IndexParamPortDefinition ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OMX_StateExecuting ; 
 int /*<<< orphan*/  OMX_StateIdle ; 
 void* OMX_VERSION ; 
 int /*<<< orphan*/  TIMEOUT_MS ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

int
FUNC12(OPENMAX_JPEG_DECODER * decoder)
{
    OMX_PARAM_PORTDEFINITIONTYPE portdef;

    // need to setup the input for the resizer with the output of the
    // decoder
    portdef.nSize = sizeof(OMX_PARAM_PORTDEFINITIONTYPE);
    portdef.nVersion.nVersion = OMX_VERSION;
    portdef.nPortIndex = decoder->imageDecoder->outPort;
    FUNC1(decoder->imageDecoder->handle,
		     OMX_IndexParamPortDefinition, &portdef);

    unsigned int    uWidth =
	(unsigned int) portdef.format.image.nFrameWidth;
    unsigned int    uHeight =
	(unsigned int) portdef.format.image.nFrameHeight;

    // tell resizer input what the decoder output will be providing
    portdef.nPortIndex = decoder->imageResizer->inPort;
    FUNC3(decoder->imageResizer->handle,
		     OMX_IndexParamPortDefinition, &portdef);

    // establish tunnel between decoder output and resizer input
    FUNC4(decoder->imageDecoder->handle,
		    decoder->imageDecoder->outPort,
		    decoder->imageResizer->handle,
		    decoder->imageResizer->inPort);

    // enable ports
    FUNC2(decoder->imageDecoder->handle,
		    OMX_CommandPortEnable,
		    decoder->imageDecoder->outPort, NULL);
    FUNC2(decoder->imageResizer->handle,
		    OMX_CommandPortEnable,
		    decoder->imageResizer->inPort, NULL);

    // put resizer in idle state (this allows the outport of the decoder
    // to become enabled)
    FUNC2(decoder->imageResizer->handle,
		    OMX_CommandStateSet, OMX_StateIdle, NULL);

    // wait for state change complete
    FUNC9(decoder->imageResizer->component,
			    OMX_EventCmdComplete,
			    OMX_CommandStateSet, 1,
			    OMX_StateIdle, 1, 0, TIMEOUT_MS);

    // once the state changes, both ports should become enabled and the
    // resizer
    // output should generate a settings changed event
    FUNC9(decoder->imageDecoder->component,
			    OMX_EventCmdComplete,
			    OMX_CommandPortEnable, 1,
			    decoder->imageDecoder->outPort, 1, 0,
			    TIMEOUT_MS);
    FUNC9(decoder->imageResizer->component,
			    OMX_EventCmdComplete, OMX_CommandPortEnable, 1,
			    decoder->imageResizer->inPort, 1, 0,
			    TIMEOUT_MS);
    FUNC9(decoder->imageResizer->component,
			    OMX_EventPortSettingsChanged,
			    decoder->imageResizer->outPort, 1, 0, 1, 0,
			    TIMEOUT_MS);

    FUNC8(decoder->imageResizer->component,
			  decoder->imageResizer->outPort);

    // query output buffer requirements for resizer
    portdef.nSize = sizeof(OMX_PARAM_PORTDEFINITIONTYPE);
    portdef.nVersion.nVersion = OMX_VERSION;
    portdef.nPortIndex = decoder->imageResizer->outPort;
    FUNC1(decoder->imageResizer->handle,
		     OMX_IndexParamPortDefinition, &portdef);

    // change output color format and dimensions to match input
    portdef.format.image.eCompressionFormat = OMX_IMAGE_CodingUnused;
    portdef.format.image.eColorFormat = OMX_COLOR_Format32bitABGR8888;
    portdef.format.image.nFrameWidth = uWidth;
    portdef.format.image.nFrameHeight = uHeight;
    portdef.format.image.nStride = 0;
    portdef.format.image.nSliceHeight = 0;
    portdef.format.image.bFlagErrorConcealment = OMX_FALSE;

    FUNC3(decoder->imageResizer->handle,
		     OMX_IndexParamPortDefinition, &portdef);

    // grab output requirements again to get actual buffer size
    // requirement (and buffer count requirement!)
    FUNC1(decoder->imageResizer->handle,
		     OMX_IndexParamPortDefinition, &portdef);

    // move resizer into executing state
    FUNC7(decoder->imageResizer->component,
				    OMX_StateExecuting);

    // show some logging so user knows it's working
    FUNC11
	("Width: %u Height: %u Output Color Format: 0x%x Buffer Size: %u\n",
	 (unsigned int) portdef.format.image.nFrameWidth,
	 (unsigned int) portdef.format.image.nFrameHeight,
	 (unsigned int) portdef.format.image.eColorFormat,
	 (unsigned int) portdef.nBufferSize);
    FUNC5(stdout);

    // enable output port of resizer
    FUNC2(decoder->imageResizer->handle,
		    OMX_CommandPortEnable,
		    decoder->imageResizer->outPort, NULL);

    // allocate the buffer
    // void* outputBuffer = 0;
    // if (posix_memalign(&outputBuffer, portdef.nBufferAlignment,
    // portdef.nBufferSize) != 0)
    // {
    // perror("Allocating output buffer");
    // return OMXJPEG_ERROR_MEMORY;
    // }

    // set the buffer
    // int ret = OMX_UseBuffer(decoder->imageResizer->handle,
    // &decoder->pOutputBufferHeader,
    // decoder->imageResizer->outPort, NULL,
    // portdef.nBufferSize,
    // (OMX_U8 *) outputBuffer);
    int             ret = FUNC0(decoder->imageResizer->handle,
					     &decoder->pOutputBufferHeader,
					     decoder->imageResizer->
					     outPort,
					     NULL,
					     portdef.nBufferSize);
    if (ret != OMX_ErrorNone) {
	FUNC10("Eror allocating buffer");
	FUNC6(stderr, "OMX_AllocateBuffer returned 0x%x allocating buffer size 0x%x\n", ret, portdef.nBufferSize);
	return OMXJPEG_ERROR_MEMORY;
    }

    FUNC9(decoder->imageResizer->component,
			    OMX_EventCmdComplete,
			    OMX_CommandPortEnable, 1,
			    decoder->imageResizer->outPort, 1, 0,
			    TIMEOUT_MS);

    return OMXJPEG_OK;
}