#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * client; } ;
typedef  TYPE_1__ OPENMAX_JPEG_DECODER ;

/* Variables and functions */
 int OMXJPEG_ERROR_ILCLIENT_INIT ; 
 int OMXJPEG_ERROR_MEMORY ; 
 int OMXJPEG_ERROR_OMX_INIT ; 
 int OMXJPEG_OK ; 
 scalar_t__ OMX_ErrorNone ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*) ; 
 int FUNC8 (TYPE_1__*) ; 

int
FUNC9(OPENMAX_JPEG_DECODER ** pDecoder)
{
    *pDecoder = FUNC3(sizeof(OPENMAX_JPEG_DECODER));
    if (pDecoder[0] == NULL) {
	FUNC5("malloc decoder");
	return OMXJPEG_ERROR_MEMORY;
    }
    FUNC4(*pDecoder, 0, sizeof(OPENMAX_JPEG_DECODER));

    if ((pDecoder[0]->client = FUNC2()) == NULL) {
	FUNC5("ilclient_init");
	return OMXJPEG_ERROR_ILCLIENT_INIT;
    }

    if (FUNC0() != OMX_ErrorNone) {
	FUNC1(pDecoder[0]->client);
	FUNC5("OMX_Init");
	return OMXJPEG_ERROR_OMX_INIT;
    }
    // prepare the image decoder
    int             ret = FUNC6(pDecoder[0]);
    if (ret != OMXJPEG_OK)
	return ret;

    ret = FUNC7(pDecoder[0]);
    if (ret != OMXJPEG_OK)
	return ret;

    ret = FUNC8(pDecoder[0]);
    if (ret != OMXJPEG_OK)
	return ret;

    return OMXJPEG_OK;
}