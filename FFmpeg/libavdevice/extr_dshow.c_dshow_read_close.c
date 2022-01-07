
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct dshow_ctx {TYPE_1__* pktl; scalar_t__* event; scalar_t__ mutex; int * device_unique_name; int * device_name; int ** device_filter; scalar_t__* device_pin; scalar_t__* capture_filter; scalar_t__* capture_pin; scalar_t__ graph; scalar_t__ media_event; scalar_t__ control; } ;
struct TYPE_6__ {struct dshow_ctx* priv_data; } ;
struct TYPE_5__ {int pkt; struct TYPE_5__* next; } ;
typedef int IEnumFilters ;
typedef int IBaseFilter ;
typedef TYPE_1__ AVPacketList ;
typedef TYPE_2__ AVFormatContext ;


 size_t AudioDevice ;
 int CloseHandle (scalar_t__) ;
 int CoUninitialize () ;
 int IBaseFilter_Release (int *) ;
 int IEnumFilters_Next (int *,int,int **,int *) ;
 int IEnumFilters_Release (int *) ;
 int IEnumFilters_Reset (int *) ;
 int IGraphBuilder_EnumFilters (scalar_t__,int **) ;
 int IGraphBuilder_Release (scalar_t__) ;
 int IGraphBuilder_RemoveFilter (scalar_t__,int *) ;
 int IMediaControl_Release (scalar_t__) ;
 int IMediaControl_Stop (scalar_t__) ;
 int IMediaEvent_Release (scalar_t__) ;
 int IPin_Release (scalar_t__) ;
 int S_OK ;
 size_t VideoDevice ;
 int av_free (TYPE_1__*) ;
 int av_freep (int *) ;
 int av_packet_unref (int *) ;
 int libAVFilter_Release (scalar_t__) ;
 int libAVPin_Release (scalar_t__) ;

__attribute__((used)) static int
dshow_read_close(AVFormatContext *s)
{
    struct dshow_ctx *ctx = s->priv_data;
    AVPacketList *pktl;

    if (ctx->control) {
        IMediaControl_Stop(ctx->control);
        IMediaControl_Release(ctx->control);
    }

    if (ctx->media_event)
        IMediaEvent_Release(ctx->media_event);

    if (ctx->graph) {
        IEnumFilters *fenum;
        int r;
        r = IGraphBuilder_EnumFilters(ctx->graph, &fenum);
        if (r == S_OK) {
            IBaseFilter *f;
            IEnumFilters_Reset(fenum);
            while (IEnumFilters_Next(fenum, 1, &f, ((void*)0)) == S_OK) {
                if (IGraphBuilder_RemoveFilter(ctx->graph, f) == S_OK)
                    IEnumFilters_Reset(fenum);

                IBaseFilter_Release(f);
            }
            IEnumFilters_Release(fenum);
        }
        IGraphBuilder_Release(ctx->graph);
    }

    if (ctx->capture_pin[VideoDevice])
        libAVPin_Release(ctx->capture_pin[VideoDevice]);
    if (ctx->capture_pin[AudioDevice])
        libAVPin_Release(ctx->capture_pin[AudioDevice]);
    if (ctx->capture_filter[VideoDevice])
        libAVFilter_Release(ctx->capture_filter[VideoDevice]);
    if (ctx->capture_filter[AudioDevice])
        libAVFilter_Release(ctx->capture_filter[AudioDevice]);

    if (ctx->device_pin[VideoDevice])
        IPin_Release(ctx->device_pin[VideoDevice]);
    if (ctx->device_pin[AudioDevice])
        IPin_Release(ctx->device_pin[AudioDevice]);
    if (ctx->device_filter[VideoDevice])
        IBaseFilter_Release(ctx->device_filter[VideoDevice]);
    if (ctx->device_filter[AudioDevice])
        IBaseFilter_Release(ctx->device_filter[AudioDevice]);

    av_freep(&ctx->device_name[0]);
    av_freep(&ctx->device_name[1]);
    av_freep(&ctx->device_unique_name[0]);
    av_freep(&ctx->device_unique_name[1]);

    if(ctx->mutex)
        CloseHandle(ctx->mutex);
    if(ctx->event[0])
        CloseHandle(ctx->event[0]);
    if(ctx->event[1])
        CloseHandle(ctx->event[1]);

    pktl = ctx->pktl;
    while (pktl) {
        AVPacketList *next = pktl->next;
        av_packet_unref(&pktl->pkt);
        av_free(pktl);
        pktl = next;
    }

    CoUninitialize();

    return 0;
}
