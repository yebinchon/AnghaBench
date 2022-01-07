
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct dshow_ctx {scalar_t__ show_analog_tv_tuner_audio_dialog; scalar_t__ show_analog_tv_tuner_dialog; scalar_t__ show_audio_crossbar_connection_dialog; scalar_t__ show_video_crossbar_connection_dialog; } ;
typedef enum dshowDeviceType { ____Placeholder_dshowDeviceType } dshowDeviceType ;
struct TYPE_6__ {struct dshow_ctx* priv_data; } ;
typedef int ICaptureGraphBuilder2 ;
typedef int IBaseFilter ;
typedef int IAMTVTuner ;
typedef int IAMCrossbar ;
typedef int IAMAudioInputMixer ;
typedef scalar_t__ HRESULT ;
typedef int GUID ;
typedef TYPE_1__ AVFormatContext ;


 int AV_LOG_WARNING ;
 int AudioDevice ;
 scalar_t__ IAMCrossbar_QueryInterface (int *,int *,void**) ;
 int IAMCrossbar_Release (int *) ;
 int IAMTVTuner_Release (int *) ;
 int IBaseFilter_Release (int *) ;
 scalar_t__ ICaptureGraphBuilder2_FindInterface (int *,int *,int const*,int *,int *,void**) ;
 int IID_IAMCrossbar ;
 int IID_IAMTVAudio ;
 int IID_IAMTVTuner ;
 int IID_IBaseFilter ;
 int LOOK_UPSTREAM_ONLY ;
 scalar_t__ S_OK ;
 int VideoDevice ;
 int av_log (TYPE_1__*,int ,char*) ;
 int dshow_show_filter_properties (int *,TYPE_1__*) ;
 scalar_t__ setup_crossbar_options (int *,int,TYPE_1__*) ;

HRESULT
dshow_try_setup_crossbar_options(ICaptureGraphBuilder2 *graph_builder2,
    IBaseFilter *device_filter, enum dshowDeviceType devtype, AVFormatContext *avctx)
{
    struct dshow_ctx *ctx = avctx->priv_data;
    IAMCrossbar *cross_bar = ((void*)0);
    IBaseFilter *cross_bar_base_filter = ((void*)0);
    IAMTVTuner *tv_tuner_filter = ((void*)0);
    IBaseFilter *tv_tuner_base_filter = ((void*)0);
    IAMAudioInputMixer *tv_audio_filter = ((void*)0);
    IBaseFilter *tv_audio_base_filter = ((void*)0);
    HRESULT hr;

    hr = ICaptureGraphBuilder2_FindInterface(graph_builder2, &LOOK_UPSTREAM_ONLY, (const GUID *) ((void*)0),
            device_filter, &IID_IAMCrossbar, (void**) &cross_bar);
    if (hr != S_OK) {

        hr = S_OK;
        goto end;
    }


    if (devtype == VideoDevice && ctx->show_video_crossbar_connection_dialog ||
        devtype == AudioDevice && ctx->show_audio_crossbar_connection_dialog) {
        hr = IAMCrossbar_QueryInterface(cross_bar, &IID_IBaseFilter, (void **) &cross_bar_base_filter);
        if (hr != S_OK)
            goto end;
        dshow_show_filter_properties(cross_bar_base_filter, avctx);
    }

    if (devtype == VideoDevice && ctx->show_analog_tv_tuner_dialog) {
        hr = ICaptureGraphBuilder2_FindInterface(graph_builder2, &LOOK_UPSTREAM_ONLY, ((void*)0),
             device_filter, &IID_IAMTVTuner, (void**) &tv_tuner_filter);
        if (hr == S_OK) {
            hr = IAMCrossbar_QueryInterface(tv_tuner_filter, &IID_IBaseFilter, (void **) &tv_tuner_base_filter);
            if (hr != S_OK)
                goto end;
            dshow_show_filter_properties(tv_tuner_base_filter, avctx);
        } else {
            av_log(avctx, AV_LOG_WARNING, "unable to find a tv tuner to display dialog for!");
        }
    }
    if (devtype == AudioDevice && ctx->show_analog_tv_tuner_audio_dialog) {
        hr = ICaptureGraphBuilder2_FindInterface(graph_builder2, &LOOK_UPSTREAM_ONLY, ((void*)0),
             device_filter, &IID_IAMTVAudio, (void**) &tv_audio_filter);
        if (hr == S_OK) {
            hr = IAMCrossbar_QueryInterface(tv_audio_filter, &IID_IBaseFilter, (void **) &tv_audio_base_filter);
            if (hr != S_OK)
                goto end;
            dshow_show_filter_properties(tv_audio_base_filter, avctx);
        } else {
            av_log(avctx, AV_LOG_WARNING, "unable to find a tv audio tuner to display dialog for!");
        }
    }

    hr = setup_crossbar_options(cross_bar, devtype, avctx);
    if (hr != S_OK)
        goto end;

end:
    if (cross_bar)
        IAMCrossbar_Release(cross_bar);
    if (cross_bar_base_filter)
        IBaseFilter_Release(cross_bar_base_filter);
    if (tv_tuner_filter)
        IAMTVTuner_Release(tv_tuner_filter);
    if (tv_tuner_base_filter)
        IBaseFilter_Release(tv_tuner_base_filter);
    return hr;
}
