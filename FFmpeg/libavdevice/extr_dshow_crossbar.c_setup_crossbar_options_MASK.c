#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct dshow_ctx {int crossbar_video_input_pin_number; int crossbar_audio_input_pin_number; char** device_name; scalar_t__ list_options; } ;
typedef  enum dshowDeviceType { ____Placeholder_dshowDeviceType } dshowDeviceType ;
struct TYPE_4__ {struct dshow_ctx* priv_data; } ;
typedef  int /*<<< orphan*/  IAMCrossbar ;
typedef  scalar_t__ HRESULT ;
typedef  TYPE_1__ AVFormatContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int AV_LOG_DEBUG ; 
 int AV_LOG_ERROR ; 
 int AV_LOG_INFO ; 
 int AV_LOG_WARNING ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FALSE ; 
 long FUNC1 (long) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,long*,long*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int,long*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,long*,long*) ; 
 long PhysConn_Audio_AudioDecoder ; 
 long PhysConn_Video_VideoDecoder ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int,char*,...) ; 

__attribute__((used)) static HRESULT
FUNC8(IAMCrossbar *cross_bar, enum dshowDeviceType devtype, AVFormatContext *avctx)
{
    struct dshow_ctx *ctx = avctx->priv_data;
    long count_output_pins, count_input_pins;
    int i;
    int log_level = ctx->list_options ? AV_LOG_INFO : AV_LOG_DEBUG;
    int video_input_pin = ctx->crossbar_video_input_pin_number;
    int audio_input_pin = ctx->crossbar_audio_input_pin_number;
    const char *device_name = ctx->device_name[devtype];
    HRESULT hr;

    FUNC7(avctx, log_level, "Crossbar Switching Information for %s:\n", device_name);
    hr = FUNC6(cross_bar, &count_output_pins, &count_input_pins);
    if (hr != S_OK) {
        FUNC7(avctx, AV_LOG_ERROR, "Unable to get crossbar pin counts\n");
        return hr;
    }

    for (i = 0; i < count_output_pins; i++)
    {
        int j;
        long related_pin, pin_type, route_to_pin;
        hr = FUNC4(cross_bar, FALSE, i, &related_pin, &pin_type);
        if (pin_type == PhysConn_Video_VideoDecoder) {
            /* assume there is only one "Video (and one Audio) Decoder" output pin, and it's all we care about routing to...for now */
            if (video_input_pin != -1) {
                FUNC7(avctx, log_level, "Routing video input from pin %d\n", video_input_pin);
                hr = FUNC3(cross_bar, i, video_input_pin);
                if (hr != S_OK) {
                    FUNC7(avctx, AV_LOG_ERROR, "Unable to route video input from pin %d\n", video_input_pin);
                    return FUNC0(EIO);
                }
            }
        } else if (pin_type == PhysConn_Audio_AudioDecoder) {
            if (audio_input_pin != -1) {
                FUNC7(avctx, log_level, "Routing audio input from pin %d\n", audio_input_pin);
                hr = FUNC3(cross_bar, i, audio_input_pin);
                if (hr != S_OK) {
                    FUNC7(avctx, AV_LOG_ERROR, "Unable to route audio input from pin %d\n", audio_input_pin);
                    return hr;
                }
            }
        } else {
            FUNC7(avctx, AV_LOG_WARNING, "Unexpected output pin type, please report the type if you want to use this (%s)", FUNC1(pin_type));
        }

        hr = FUNC5(cross_bar, i, &route_to_pin);
        if (hr != S_OK) {
            FUNC7(avctx, AV_LOG_ERROR, "Unable to get crossbar is routed to from pin %d\n", i);
            return hr;
        }
        FUNC7(avctx, log_level, "  Crossbar Output pin %d: \"%s\" related output pin: %ld ", i, FUNC1(pin_type), related_pin);
        FUNC7(avctx, log_level, "current input pin: %ld ", route_to_pin);
        FUNC7(avctx, log_level, "compatible input pins: ");

        for (j = 0; j < count_input_pins; j++)
        {
            hr = FUNC2(cross_bar, i, j);
            if (hr == S_OK)
                FUNC7(avctx, log_level ,"%d ", j);
        }
        FUNC7(avctx, log_level, "\n");
    }

    for (i = 0; i < count_input_pins; i++)
    {
        long related_pin, pin_type;
        hr = FUNC4(cross_bar, TRUE, i, &related_pin, &pin_type);
        if (hr != S_OK) {
            FUNC7(avctx, AV_LOG_ERROR, "unable to get crossbar info audio input from pin %d\n", i);
            return hr;
        }
        FUNC7(avctx, log_level, "  Crossbar Input pin %d - \"%s\" ", i, FUNC1(pin_type));
        FUNC7(avctx, log_level, "related input pin: %ld\n", related_pin);
    }
    return S_OK;
}