
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef char wchar_t ;
struct dshow_ctx {char* audio_filter_load_file; char* video_filter_load_file; char** device_unique_name; char* audio_filter_save_file; char* video_filter_save_file; int ** capture_pin; TYPE_1__** capture_filter; int ** device_pin; int ** device_filter; int * graph; } ;
typedef int libAVPin ;
struct TYPE_10__ {int * pin; } ;
typedef TYPE_1__ libAVFilter ;
typedef enum dshowSourceFilterType { ____Placeholder_dshowSourceFilterType } dshowSourceFilterType ;
typedef enum dshowDeviceType { ____Placeholder_dshowDeviceType } dshowDeviceType ;
struct TYPE_11__ {struct dshow_ctx* priv_data; } ;
typedef int LPCSTR ;
typedef int IUnknown ;
typedef int IStream ;
typedef int IPin ;
typedef int IPersistStream ;
typedef int IGraphBuilder ;
typedef int ICreateDevEnum ;
typedef int ICaptureGraphBuilder2 ;
typedef int IBaseFilter ;
typedef int HRESULT ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR (int ) ;
 int AV_LOG_DEBUG ;
 int AV_LOG_ERROR ;
 int AV_LOG_INFO ;
 int AudioDevice ;
 int AudioSourceDevice ;
 int CLSCTX_INPROC_SERVER ;
 int CLSID_CaptureGraphBuilder2 ;
 int CoCreateInstance (int *,int *,int ,int *,void**) ;
 int EIO ;
 int IBaseFilter_AddRef (int *) ;
 int IBaseFilter_QueryInterface (int *,int *,void**) ;
 int IBaseFilter_Release (int *) ;
 int ICaptureGraphBuilder2_Release (int *) ;
 int ICaptureGraphBuilder2_RenderStream (int *,int *,int *,int *,int *,int *) ;
 int ICaptureGraphBuilder2_SetFiltergraph (int *,int *) ;
 int IGraphBuilder_AddFilter (int *,int *,char const*) ;
 int IID_IBaseFilter ;
 int IID_ICaptureGraphBuilder2 ;
 int IID_IPersistStream ;
 int IPersistStream_Release (int *) ;
 int IStream_Commit (int *,int ) ;
 int IStream_Release (int *) ;
 int OleLoadFromStream (int *,int *,void**) ;
 int OleSaveToStream (int *,int *) ;
 int SHCreateStreamOnFile (int ,int,int **) ;
 int STGC_DEFAULT ;
 int STGM_CREATE ;
 int STGM_READ ;
 int STGM_READWRITE ;
 int S_OK ;
 int VideoDevice ;
 int VideoSourceDevice ;
 int av_log (TYPE_2__*,int ,char*,...) ;
 int callback ;
 int dshow_cycle_devices (TYPE_2__*,int *,int,int,int **,char**) ;
 int dshow_cycle_pins (TYPE_2__*,int,int,int *,int **) ;
 int dshow_try_setup_crossbar_options (int *,int *,int,TYPE_2__*) ;
 TYPE_1__* libAVFilter_Create (TYPE_2__*,int ,int) ;
 int libAVPin_AddRef (int *) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int
dshow_open_device(AVFormatContext *avctx, ICreateDevEnum *devenum,
                  enum dshowDeviceType devtype, enum dshowSourceFilterType sourcetype)
{
    struct dshow_ctx *ctx = avctx->priv_data;
    IBaseFilter *device_filter = ((void*)0);
    char *device_filter_unique_name = ((void*)0);
    IGraphBuilder *graph = ctx->graph;
    IPin *device_pin = ((void*)0);
    libAVPin *capture_pin = ((void*)0);
    libAVFilter *capture_filter = ((void*)0);
    ICaptureGraphBuilder2 *graph_builder2 = ((void*)0);
    int ret = AVERROR(EIO);
    int r;
    IStream *ifile_stream = ((void*)0);
    IStream *ofile_stream = ((void*)0);
    IPersistStream *pers_stream = ((void*)0);
    enum dshowDeviceType otherDevType = (devtype == VideoDevice) ? AudioDevice : VideoDevice;

    const wchar_t *filter_name[2] = { L"Audio capture filter", L"Video capture filter" };


    if ( ((ctx->audio_filter_load_file) && (strlen(ctx->audio_filter_load_file)>0) && (sourcetype == AudioSourceDevice)) ||
            ((ctx->video_filter_load_file) && (strlen(ctx->video_filter_load_file)>0) && (sourcetype == VideoSourceDevice)) ) {
        HRESULT hr;
        char *filename = ((void*)0);

        if (sourcetype == AudioSourceDevice)
            filename = ctx->audio_filter_load_file;
        else
            filename = ctx->video_filter_load_file;

        hr = SHCreateStreamOnFile ((LPCSTR) filename, STGM_READ, &ifile_stream);
        if (S_OK != hr) {
            av_log(avctx, AV_LOG_ERROR, "Could not open capture filter description file.\n");
            goto error;
        }

        hr = OleLoadFromStream(ifile_stream, &IID_IBaseFilter, (void **) &device_filter);
        if (hr != S_OK) {
            av_log(avctx, AV_LOG_ERROR, "Could not load capture filter from file.\n");
            goto error;
        }

        if (sourcetype == AudioSourceDevice)
            av_log(avctx, AV_LOG_INFO, "Audio-");
        else
            av_log(avctx, AV_LOG_INFO, "Video-");
        av_log(avctx, AV_LOG_INFO, "Capture filter loaded successfully from file \"%s\".\n", filename);
    } else {

        if ((r = dshow_cycle_devices(avctx, devenum, devtype, sourcetype, &device_filter, &device_filter_unique_name)) < 0) {
            ret = r;
            goto error;
        }
    }
        if (ctx->device_filter[otherDevType]) {


        if (strcmp(device_filter_unique_name, ctx->device_unique_name[otherDevType]) == 0) {
          av_log(avctx, AV_LOG_DEBUG, "reusing previous graph capture filter... %s\n", device_filter_unique_name);
          IBaseFilter_Release(device_filter);
          device_filter = ctx->device_filter[otherDevType];
          IBaseFilter_AddRef(ctx->device_filter[otherDevType]);
        } else {
            av_log(avctx, AV_LOG_DEBUG, "not reusing previous graph capture filter %s != %s\n", device_filter_unique_name, ctx->device_unique_name[otherDevType]);
        }
    }

    ctx->device_filter [devtype] = device_filter;
    ctx->device_unique_name [devtype] = device_filter_unique_name;

    r = IGraphBuilder_AddFilter(graph, device_filter, ((void*)0));
    if (r != S_OK) {
        av_log(avctx, AV_LOG_ERROR, "Could not add device filter to graph.\n");
        goto error;
    }

    if ((r = dshow_cycle_pins(avctx, devtype, sourcetype, device_filter, &device_pin)) < 0) {
        ret = r;
        goto error;
    }

    ctx->device_pin[devtype] = device_pin;

    capture_filter = libAVFilter_Create(avctx, callback, devtype);
    if (!capture_filter) {
        av_log(avctx, AV_LOG_ERROR, "Could not create grabber filter.\n");
        goto error;
    }
    ctx->capture_filter[devtype] = capture_filter;

    if ( ((ctx->audio_filter_save_file) && (strlen(ctx->audio_filter_save_file)>0) && (sourcetype == AudioSourceDevice)) ||
            ((ctx->video_filter_save_file) && (strlen(ctx->video_filter_save_file)>0) && (sourcetype == VideoSourceDevice)) ) {

        HRESULT hr;
        char *filename = ((void*)0);

        if (sourcetype == AudioSourceDevice)
            filename = ctx->audio_filter_save_file;
        else
            filename = ctx->video_filter_save_file;

        hr = SHCreateStreamOnFile ((LPCSTR) filename, STGM_CREATE | STGM_READWRITE, &ofile_stream);
        if (S_OK != hr) {
            av_log(avctx, AV_LOG_ERROR, "Could not create capture filter description file.\n");
            goto error;
        }

        hr = IBaseFilter_QueryInterface(device_filter, &IID_IPersistStream, (void **) &pers_stream);
        if (hr != S_OK) {
            av_log(avctx, AV_LOG_ERROR, "Query for IPersistStream failed.\n");
            goto error;
        }

        hr = OleSaveToStream(pers_stream, ofile_stream);
        if (hr != S_OK) {
            av_log(avctx, AV_LOG_ERROR, "Could not save capture filter \n");
            goto error;
        }

        hr = IStream_Commit(ofile_stream, STGC_DEFAULT);
        if (S_OK != hr) {
            av_log(avctx, AV_LOG_ERROR, "Could not commit capture filter data to file.\n");
            goto error;
        }

        if (sourcetype == AudioSourceDevice)
            av_log(avctx, AV_LOG_INFO, "Audio-");
        else
            av_log(avctx, AV_LOG_INFO, "Video-");
        av_log(avctx, AV_LOG_INFO, "Capture filter saved successfully to file \"%s\".\n", filename);
    }

    r = IGraphBuilder_AddFilter(graph, (IBaseFilter *) capture_filter,
                                filter_name[devtype]);
    if (r != S_OK) {
        av_log(avctx, AV_LOG_ERROR, "Could not add capture filter to graph\n");
        goto error;
    }

    libAVPin_AddRef(capture_filter->pin);
    capture_pin = capture_filter->pin;
    ctx->capture_pin[devtype] = capture_pin;

    r = CoCreateInstance(&CLSID_CaptureGraphBuilder2, ((void*)0), CLSCTX_INPROC_SERVER,
                         &IID_ICaptureGraphBuilder2, (void **) &graph_builder2);
    if (r != S_OK) {
        av_log(avctx, AV_LOG_ERROR, "Could not create CaptureGraphBuilder2\n");
        goto error;
    }
    ICaptureGraphBuilder2_SetFiltergraph(graph_builder2, graph);
    if (r != S_OK) {
        av_log(avctx, AV_LOG_ERROR, "Could not set graph for CaptureGraphBuilder2\n");
        goto error;
    }

    r = ICaptureGraphBuilder2_RenderStream(graph_builder2, ((void*)0), ((void*)0), (IUnknown *) device_pin, ((void*)0) ,
        (IBaseFilter *) capture_filter);

    if (r != S_OK) {
        av_log(avctx, AV_LOG_ERROR, "Could not RenderStream to connect pins\n");
        goto error;
    }

    r = dshow_try_setup_crossbar_options(graph_builder2, device_filter, devtype, avctx);

    if (r != S_OK) {
        av_log(avctx, AV_LOG_ERROR, "Could not setup CrossBar\n");
        goto error;
    }

    ret = 0;

error:
    if (graph_builder2 != ((void*)0))
        ICaptureGraphBuilder2_Release(graph_builder2);

    if (pers_stream)
        IPersistStream_Release(pers_stream);

    if (ifile_stream)
        IStream_Release(ifile_stream);

    if (ofile_stream)
        IStream_Release(ofile_stream);

    return ret;
}
