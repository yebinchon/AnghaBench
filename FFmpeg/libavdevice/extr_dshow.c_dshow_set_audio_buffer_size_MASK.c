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
struct dshow_ctx {int audio_buffer_size; } ;
struct TYPE_9__ {int nAvgBytesPerSec; } ;
typedef  TYPE_1__ WAVEFORMATEX ;
struct TYPE_12__ {int member_0; int member_1; int member_2; int member_3; int cbBuffer; } ;
struct TYPE_11__ {struct TYPE_11__* pbFormat; int /*<<< orphan*/  formattype; } ;
struct TYPE_10__ {struct dshow_ctx* priv_data; } ;
typedef  int /*<<< orphan*/  IPin ;
typedef  int /*<<< orphan*/  IAMStreamConfig ;
typedef  int /*<<< orphan*/  IAMBufferNegotiation ;
typedef  TYPE_2__ AVFormatContext ;
typedef  TYPE_3__ AM_MEDIA_TYPE ;
typedef  TYPE_4__ ALLOCATOR_PROPERTIES ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FORMAT_WaveFormatEx ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IAMBufferNegotiation ; 
 int /*<<< orphan*/  IID_IAMStreamConfig ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 

__attribute__((used)) static int
FUNC8(AVFormatContext *avctx, IPin *pin)
{
    struct dshow_ctx *ctx = avctx->priv_data;
    IAMBufferNegotiation *buffer_negotiation = NULL;
    ALLOCATOR_PROPERTIES props = { -1, -1, -1, -1 };
    IAMStreamConfig *config = NULL;
    AM_MEDIA_TYPE *type = NULL;
    int ret = FUNC0(EIO);

    if (FUNC6(pin, &IID_IAMStreamConfig, (void **) &config) != S_OK)
        goto end;
    if (FUNC4(config, &type) != S_OK)
        goto end;
    if (!FUNC7(&type->formattype, &FORMAT_WaveFormatEx))
        goto end;

    props.cbBuffer = (((WAVEFORMATEX *) type->pbFormat)->nAvgBytesPerSec)
                   * ctx->audio_buffer_size / 1000;

    if (FUNC6(pin, &IID_IAMBufferNegotiation, (void **) &buffer_negotiation) != S_OK)
        goto end;
    if (FUNC3(buffer_negotiation, &props) != S_OK)
        goto end;

    ret = 0;

end:
    if (buffer_negotiation)
        FUNC2(buffer_negotiation);
    if (type) {
        if (type->pbFormat)
            FUNC1(type->pbFormat);
        FUNC1(type);
    }
    if (config)
        FUNC5(config);

    return ret;
}