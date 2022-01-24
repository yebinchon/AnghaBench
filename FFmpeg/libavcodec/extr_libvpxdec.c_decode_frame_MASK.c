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
typedef  int /*<<< orphan*/  vpx_codec_ctx_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ VPX_CODEC_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(AVCodecContext *avctx, vpx_codec_ctx_t *decoder,
                        uint8_t *data, uint32_t data_sz)
{
    if (FUNC1(decoder, data, data_sz, NULL, 0) != VPX_CODEC_OK) {
        const char *error  = FUNC2(decoder);
        const char *detail = FUNC3(decoder);

        FUNC0(avctx, AV_LOG_ERROR, "Failed to decode frame: %s\n", error);
        if (detail) {
            FUNC0(avctx, AV_LOG_ERROR, "  Additional information: %s\n",
                   detail);
        }
        return AVERROR_INVALIDDATA;
    }
    return 0;
}