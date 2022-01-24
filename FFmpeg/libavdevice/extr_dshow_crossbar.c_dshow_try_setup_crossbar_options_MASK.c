#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct dshow_ctx {scalar_t__ show_analog_tv_tuner_audio_dialog; scalar_t__ show_analog_tv_tuner_dialog; scalar_t__ show_audio_crossbar_connection_dialog; scalar_t__ show_video_crossbar_connection_dialog; } ;
typedef  enum dshowDeviceType { ____Placeholder_dshowDeviceType } dshowDeviceType ;
struct TYPE_6__ {struct dshow_ctx* priv_data; } ;
typedef  int /*<<< orphan*/  ICaptureGraphBuilder2 ;
typedef  int /*<<< orphan*/  IBaseFilter ;
typedef  int /*<<< orphan*/  IAMTVTuner ;
typedef  int /*<<< orphan*/  IAMCrossbar ;
typedef  int /*<<< orphan*/  IAMAudioInputMixer ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  GUID ;
typedef  TYPE_1__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int AudioDevice ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  IID_IAMCrossbar ; 
 int /*<<< orphan*/  IID_IAMTVAudio ; 
 int /*<<< orphan*/  IID_IAMTVTuner ; 
 int /*<<< orphan*/  IID_IBaseFilter ; 
 int /*<<< orphan*/  LOOK_UPSTREAM_ONLY ; 
 scalar_t__ S_OK ; 
 int VideoDevice ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int,TYPE_1__*) ; 

HRESULT
FUNC8(ICaptureGraphBuilder2 *graph_builder2,
    IBaseFilter *device_filter, enum dshowDeviceType devtype, AVFormatContext *avctx)
{
    struct dshow_ctx *ctx = avctx->priv_data;
    IAMCrossbar *cross_bar = NULL;
    IBaseFilter *cross_bar_base_filter = NULL;
    IAMTVTuner *tv_tuner_filter = NULL;
    IBaseFilter *tv_tuner_base_filter = NULL;
    IAMAudioInputMixer *tv_audio_filter = NULL;
    IBaseFilter *tv_audio_base_filter = NULL;
    HRESULT hr;

    hr = FUNC4(graph_builder2, &LOOK_UPSTREAM_ONLY, (const GUID *) NULL,
            device_filter, &IID_IAMCrossbar, (void**) &cross_bar);
    if (hr != S_OK) {
        /* no crossbar found */
        hr = S_OK;
        goto end;
    }
    /* TODO some TV tuners apparently have multiple crossbars? */

    if (devtype == VideoDevice && ctx->show_video_crossbar_connection_dialog ||
        devtype == AudioDevice && ctx->show_audio_crossbar_connection_dialog) {
        hr = FUNC0(cross_bar, &IID_IBaseFilter, (void **) &cross_bar_base_filter);
        if (hr != S_OK)
            goto end;
        FUNC6(cross_bar_base_filter, avctx);
    }

    if (devtype == VideoDevice && ctx->show_analog_tv_tuner_dialog) {
        hr = FUNC4(graph_builder2, &LOOK_UPSTREAM_ONLY, NULL,
             device_filter, &IID_IAMTVTuner, (void**) &tv_tuner_filter);
        if (hr == S_OK) {
            hr = FUNC0(tv_tuner_filter, &IID_IBaseFilter, (void **) &tv_tuner_base_filter);
            if (hr != S_OK)
                goto end;
            FUNC6(tv_tuner_base_filter, avctx);
        } else {
            FUNC5(avctx, AV_LOG_WARNING, "unable to find a tv tuner to display dialog for!");
        }
    }
    if (devtype == AudioDevice && ctx->show_analog_tv_tuner_audio_dialog) {
        hr = FUNC4(graph_builder2, &LOOK_UPSTREAM_ONLY, NULL,
             device_filter, &IID_IAMTVAudio, (void**) &tv_audio_filter);
        if (hr == S_OK) {
            hr = FUNC0(tv_audio_filter, &IID_IBaseFilter, (void **) &tv_audio_base_filter);
            if (hr != S_OK)
                goto end;
            FUNC6(tv_audio_base_filter, avctx);
        } else {
            FUNC5(avctx, AV_LOG_WARNING, "unable to find a tv audio tuner to display dialog for!");
        }
    }

    hr = FUNC7(cross_bar, devtype, avctx);
    if (hr != S_OK)
        goto end;

end:
    if (cross_bar)
        FUNC1(cross_bar);
    if (cross_bar_base_filter)
        FUNC3(cross_bar_base_filter);
    if (tv_tuner_filter)
        FUNC2(tv_tuner_filter);
    if (tv_tuner_base_filter)
        FUNC3(tv_tuner_base_filter);
    return hr;
}