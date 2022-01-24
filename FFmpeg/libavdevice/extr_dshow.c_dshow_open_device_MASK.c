#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  char wchar_t ;
struct dshow_ctx {char* audio_filter_load_file; char* video_filter_load_file; char** device_unique_name; char* audio_filter_save_file; char* video_filter_save_file; int /*<<< orphan*/ ** capture_pin; TYPE_1__** capture_filter; int /*<<< orphan*/ ** device_pin; int /*<<< orphan*/ ** device_filter; int /*<<< orphan*/ * graph; } ;
typedef  int /*<<< orphan*/  libAVPin ;
struct TYPE_10__ {int /*<<< orphan*/ * pin; } ;
typedef  TYPE_1__ libAVFilter ;
typedef  enum dshowSourceFilterType { ____Placeholder_dshowSourceFilterType } dshowSourceFilterType ;
typedef  enum dshowDeviceType { ____Placeholder_dshowDeviceType } dshowDeviceType ;
struct TYPE_11__ {struct dshow_ctx* priv_data; } ;
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  IPin ;
typedef  int /*<<< orphan*/  IPersistStream ;
typedef  int /*<<< orphan*/  IGraphBuilder ;
typedef  int /*<<< orphan*/  ICreateDevEnum ;
typedef  int /*<<< orphan*/  ICaptureGraphBuilder2 ;
typedef  int /*<<< orphan*/  IBaseFilter ;
typedef  int HRESULT ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_INFO ; 
 int AudioDevice ; 
 int AudioSourceDevice ; 
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_CaptureGraphBuilder2 ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  IID_IBaseFilter ; 
 int /*<<< orphan*/  IID_ICaptureGraphBuilder2 ; 
 int /*<<< orphan*/  IID_IPersistStream ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  STGC_DEFAULT ; 
 int STGM_CREATE ; 
 int STGM_READ ; 
 int STGM_READWRITE ; 
 int S_OK ; 
 int VideoDevice ; 
 int VideoSourceDevice ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  callback ; 
 int FUNC16 (TYPE_2__*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ **,char**) ; 
 int FUNC17 (TYPE_2__*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,TYPE_2__*) ; 
 TYPE_1__* FUNC19 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (char*,char*) ; 
 scalar_t__ FUNC22 (char*) ; 

__attribute__((used)) static int
FUNC23(AVFormatContext *avctx, ICreateDevEnum *devenum,
                  enum dshowDeviceType devtype, enum dshowSourceFilterType sourcetype)
{
    struct dshow_ctx *ctx = avctx->priv_data;
    IBaseFilter *device_filter = NULL;
    char *device_filter_unique_name = NULL;
    IGraphBuilder *graph = ctx->graph;
    IPin *device_pin = NULL;
    libAVPin *capture_pin = NULL;
    libAVFilter *capture_filter = NULL;
    ICaptureGraphBuilder2 *graph_builder2 = NULL;
    int ret = FUNC0(EIO);
    int r;
    IStream *ifile_stream = NULL;
    IStream *ofile_stream = NULL;
    IPersistStream *pers_stream = NULL;
    enum dshowDeviceType otherDevType = (devtype == VideoDevice) ? AudioDevice : VideoDevice;

    const wchar_t *filter_name[2] = { L"Audio capture filter", L"Video capture filter" };


    if ( ((ctx->audio_filter_load_file) && (FUNC22(ctx->audio_filter_load_file)>0) && (sourcetype == AudioSourceDevice)) ||
            ((ctx->video_filter_load_file) && (FUNC22(ctx->video_filter_load_file)>0) && (sourcetype == VideoSourceDevice)) ) {
        HRESULT hr;
        char *filename = NULL;

        if (sourcetype == AudioSourceDevice)
            filename = ctx->audio_filter_load_file;
        else
            filename = ctx->video_filter_load_file;

        hr = FUNC14 ((LPCSTR) filename, STGM_READ, &ifile_stream);
        if (S_OK != hr) {
            FUNC15(avctx, AV_LOG_ERROR, "Could not open capture filter description file.\n");
            goto error;
        }

        hr = FUNC12(ifile_stream, &IID_IBaseFilter, (void **) &device_filter);
        if (hr != S_OK) {
            FUNC15(avctx, AV_LOG_ERROR, "Could not load capture filter from file.\n");
            goto error;
        }

        if (sourcetype == AudioSourceDevice)
            FUNC15(avctx, AV_LOG_INFO, "Audio-");
        else
            FUNC15(avctx, AV_LOG_INFO, "Video-");
        FUNC15(avctx, AV_LOG_INFO, "Capture filter loaded successfully from file \"%s\".\n", filename);
    } else {

        if ((r = FUNC16(avctx, devenum, devtype, sourcetype, &device_filter, &device_filter_unique_name)) < 0) {
            ret = r;
            goto error;
        }
    }
        if (ctx->device_filter[otherDevType]) {
        // avoid adding add two instances of the same device to the graph, one for video, one for audio
        // a few devices don't support this (could also do this check earlier to avoid double crossbars, etc. but they seem OK)
        if (FUNC21(device_filter_unique_name, ctx->device_unique_name[otherDevType]) == 0) {
          FUNC15(avctx, AV_LOG_DEBUG, "reusing previous graph capture filter... %s\n", device_filter_unique_name);
          FUNC4(device_filter);
          device_filter = ctx->device_filter[otherDevType];
          FUNC2(ctx->device_filter[otherDevType]);
        } else {
            FUNC15(avctx, AV_LOG_DEBUG, "not reusing previous graph capture filter %s != %s\n", device_filter_unique_name, ctx->device_unique_name[otherDevType]);
        }
    }

    ctx->device_filter [devtype] = device_filter;
    ctx->device_unique_name [devtype] = device_filter_unique_name;

    r = FUNC8(graph, device_filter, NULL);
    if (r != S_OK) {
        FUNC15(avctx, AV_LOG_ERROR, "Could not add device filter to graph.\n");
        goto error;
    }

    if ((r = FUNC17(avctx, devtype, sourcetype, device_filter, &device_pin)) < 0) {
        ret = r;
        goto error;
    }

    ctx->device_pin[devtype] = device_pin;

    capture_filter = FUNC19(avctx, callback, devtype);
    if (!capture_filter) {
        FUNC15(avctx, AV_LOG_ERROR, "Could not create grabber filter.\n");
        goto error;
    }
    ctx->capture_filter[devtype] = capture_filter;

    if ( ((ctx->audio_filter_save_file) && (FUNC22(ctx->audio_filter_save_file)>0) && (sourcetype == AudioSourceDevice)) ||
            ((ctx->video_filter_save_file) && (FUNC22(ctx->video_filter_save_file)>0) && (sourcetype == VideoSourceDevice)) ) {

        HRESULT hr;
        char *filename = NULL;

        if (sourcetype == AudioSourceDevice)
            filename = ctx->audio_filter_save_file;
        else
            filename = ctx->video_filter_save_file;

        hr = FUNC14 ((LPCSTR) filename, STGM_CREATE | STGM_READWRITE, &ofile_stream);
        if (S_OK != hr) {
            FUNC15(avctx, AV_LOG_ERROR, "Could not create capture filter description file.\n");
            goto error;
        }

        hr  = FUNC3(device_filter, &IID_IPersistStream, (void **) &pers_stream);
        if (hr != S_OK) {
            FUNC15(avctx, AV_LOG_ERROR, "Query for IPersistStream failed.\n");
            goto error;
        }

        hr = FUNC13(pers_stream, ofile_stream);
        if (hr != S_OK) {
            FUNC15(avctx, AV_LOG_ERROR, "Could not save capture filter \n");
            goto error;
        }

        hr = FUNC10(ofile_stream, STGC_DEFAULT);
        if (S_OK != hr) {
            FUNC15(avctx, AV_LOG_ERROR, "Could not commit capture filter data to file.\n");
            goto error;
        }

        if (sourcetype == AudioSourceDevice)
            FUNC15(avctx, AV_LOG_INFO, "Audio-");
        else
            FUNC15(avctx, AV_LOG_INFO, "Video-");
        FUNC15(avctx, AV_LOG_INFO, "Capture filter saved successfully to file \"%s\".\n", filename);
    }

    r = FUNC8(graph, (IBaseFilter *) capture_filter,
                                filter_name[devtype]);
    if (r != S_OK) {
        FUNC15(avctx, AV_LOG_ERROR, "Could not add capture filter to graph\n");
        goto error;
    }

    FUNC20(capture_filter->pin);
    capture_pin = capture_filter->pin;
    ctx->capture_pin[devtype] = capture_pin;

    r = FUNC1(&CLSID_CaptureGraphBuilder2, NULL, CLSCTX_INPROC_SERVER,
                         &IID_ICaptureGraphBuilder2, (void **) &graph_builder2);
    if (r != S_OK) {
        FUNC15(avctx, AV_LOG_ERROR, "Could not create CaptureGraphBuilder2\n");
        goto error;
    }
    FUNC7(graph_builder2, graph);
    if (r != S_OK) {
        FUNC15(avctx, AV_LOG_ERROR, "Could not set graph for CaptureGraphBuilder2\n");
        goto error;
    }

    r = FUNC6(graph_builder2, NULL, NULL, (IUnknown *) device_pin, NULL /* no intermediate filter */,
        (IBaseFilter *) capture_filter); /* connect pins, optionally insert intermediate filters like crossbar if necessary */

    if (r != S_OK) {
        FUNC15(avctx, AV_LOG_ERROR, "Could not RenderStream to connect pins\n");
        goto error;
    }

    r = FUNC18(graph_builder2, device_filter, devtype, avctx);

    if (r != S_OK) {
        FUNC15(avctx, AV_LOG_ERROR, "Could not setup CrossBar\n");
        goto error;
    }

    ret = 0;

error:
    if (graph_builder2 != NULL)
        FUNC5(graph_builder2);

    if (pers_stream)
        FUNC9(pers_stream);

    if (ifile_stream)
        FUNC11(ifile_stream);

    if (ofile_stream)
        FUNC11(ofile_stream);

    return ret;
}