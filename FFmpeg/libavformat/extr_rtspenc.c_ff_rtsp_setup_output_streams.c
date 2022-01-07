
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int url ;
struct TYPE_14__ {scalar_t__ start_time_realtime; char* url; int nb_streams; TYPE_2__* priv_data; } ;
struct TYPE_13__ {scalar_t__ status_code; } ;
struct TYPE_12__ {int control_uri; int nb_rtsp_streams; int rtsp_streams; } ;
struct TYPE_11__ {int stream_index; int control_url; } ;
typedef TYPE_1__ RTSPStream ;
typedef TYPE_2__ RTSPState ;
typedef TYPE_3__ RTSPMessageHeader ;
typedef TYPE_4__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AV_LOG_VERBOSE ;
 scalar_t__ AV_NOPTS_VALUE ;
 int ENOMEM ;
 scalar_t__ RTSP_STATUS_OK ;
 int SDP_MAX_SIZE ;
 int av_free (char*) ;
 scalar_t__ av_gettime () ;
 int av_log (TYPE_4__*,int ,char*,char*) ;
 void* av_mallocz (int) ;
 scalar_t__ av_sdp_create (TYPE_4__**,int,char*,int) ;
 int av_strlcatf (int ,int,char*,int) ;
 int av_strlcpy (int ,int ,int) ;
 int dynarray_add (int *,int *,TYPE_1__*) ;
 int ff_rtsp_averror (scalar_t__,int) ;
 int ff_rtsp_send_cmd_with_content (TYPE_4__*,char*,int ,char*,TYPE_3__*,int *,char*,int ) ;
 int ff_url_join (char*,int,char*,int *,char const*,int,int *) ;
 int strlen (char*) ;

int ff_rtsp_setup_output_streams(AVFormatContext *s, const char *addr)
{
    RTSPState *rt = s->priv_data;
    RTSPMessageHeader reply1, *reply = &reply1;
    int i;
    char *sdp;
    AVFormatContext sdp_ctx, *ctx_array[1];
    char url[1024];

    if (s->start_time_realtime == 0 || s->start_time_realtime == AV_NOPTS_VALUE)
        s->start_time_realtime = av_gettime();


    sdp = av_mallocz(SDP_MAX_SIZE);
    if (!sdp)
        return AVERROR(ENOMEM);
    sdp_ctx = *s;
    sdp_ctx.url = url;
    ff_url_join(url, sizeof(url),
                "rtsp", ((void*)0), addr, -1, ((void*)0));
    ctx_array[0] = &sdp_ctx;
    if (av_sdp_create(ctx_array, 1, sdp, SDP_MAX_SIZE)) {
        av_free(sdp);
        return AVERROR_INVALIDDATA;
    }
    av_log(s, AV_LOG_VERBOSE, "SDP:\n%s\n", sdp);
    ff_rtsp_send_cmd_with_content(s, "ANNOUNCE", rt->control_uri,
                                  "Content-Type: application/sdp\r\n",
                                  reply, ((void*)0), sdp, strlen(sdp));
    av_free(sdp);
    if (reply->status_code != RTSP_STATUS_OK)
        return ff_rtsp_averror(reply->status_code, AVERROR_INVALIDDATA);


    for (i = 0; i < s->nb_streams; i++) {
        RTSPStream *rtsp_st;

        rtsp_st = av_mallocz(sizeof(RTSPStream));
        if (!rtsp_st)
            return AVERROR(ENOMEM);
        dynarray_add(&rt->rtsp_streams, &rt->nb_rtsp_streams, rtsp_st);

        rtsp_st->stream_index = i;

        av_strlcpy(rtsp_st->control_url, rt->control_uri, sizeof(rtsp_st->control_url));

        av_strlcatf(rtsp_st->control_url, sizeof(rtsp_st->control_url),
                    "/streamid=%d", i);
    }

    return 0;
}
