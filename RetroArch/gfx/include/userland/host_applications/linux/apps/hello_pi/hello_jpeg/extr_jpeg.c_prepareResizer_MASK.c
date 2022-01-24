#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ outPort; scalar_t__ inPort; int /*<<< orphan*/  component; int /*<<< orphan*/  handle; } ;
struct TYPE_7__ {int /*<<< orphan*/  nVersion; } ;
struct TYPE_9__ {int nSize; int nPorts; scalar_t__ nStartPortNumber; TYPE_1__ nVersion; } ;
struct TYPE_8__ {int /*<<< orphan*/ * pOutputBufferHeader; TYPE_5__* imageResizer; int /*<<< orphan*/  client; } ;
typedef  TYPE_2__ OPENMAX_JPEG_DECODER ;
typedef  TYPE_3__ OMX_PORT_PARAM_TYPE ;
typedef  int /*<<< orphan*/  COMPONENT_DETAILS ;

/* Variables and functions */
 int ILCLIENT_DISABLE_ALL_PORTS ; 
 int ILCLIENT_ENABLE_INPUT_BUFFERS ; 
 int ILCLIENT_ENABLE_OUTPUT_BUFFERS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int OMXJPEG_ERROR_CREATING_COMP ; 
 int OMXJPEG_ERROR_MEMORY ; 
 int OMXJPEG_ERROR_WRONG_NO_PORTS ; 
 int OMXJPEG_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  OMX_IndexParamImageInit ; 
 int /*<<< orphan*/  OMX_VERSION ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 TYPE_5__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int
FUNC5(OPENMAX_JPEG_DECODER * decoder)
{
    decoder->imageResizer = FUNC3(sizeof(COMPONENT_DETAILS));
    if (decoder->imageResizer == NULL) {
	FUNC4("malloc image resizer");
	return OMXJPEG_ERROR_MEMORY;
    }

    int             ret = FUNC2(decoder->client,
						    &decoder->
						    imageResizer->
						    component,
						    "resize",
						    ILCLIENT_DISABLE_ALL_PORTS
						    |
						    ILCLIENT_ENABLE_INPUT_BUFFERS
						    |
						    ILCLIENT_ENABLE_OUTPUT_BUFFERS);
    if (ret != 0) {
	FUNC4("image resizer");
	return OMXJPEG_ERROR_CREATING_COMP;
    }
    // grab the handle for later use
    decoder->imageResizer->handle =
	FUNC0(decoder->imageResizer->component);

    // get and store the ports
    OMX_PORT_PARAM_TYPE port;
    port.nSize = sizeof(OMX_PORT_PARAM_TYPE);
    port.nVersion.nVersion = OMX_VERSION;

    FUNC1(FUNC0(decoder->imageResizer->component),
		     OMX_IndexParamImageInit, &port);
    if (port.nPorts != 2) {
	return OMXJPEG_ERROR_WRONG_NO_PORTS;
    }
    decoder->imageResizer->inPort = port.nStartPortNumber;
    decoder->imageResizer->outPort = port.nStartPortNumber + 1;

    decoder->pOutputBufferHeader = NULL;

    return OMXJPEG_OK;
}