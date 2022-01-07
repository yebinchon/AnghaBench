
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int tcpname ;
struct TYPE_11__ {int is_streamed; int protocol_blacklist; int protocol_whitelist; int interrupt_callback; TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_13__ {int header_parsed; int mms_hd; int stream_num; int asf_packet_len; } ;
struct TYPE_12__ {int packet_id; int header_packet_id; int incoming_flags; int host; int path; TYPE_3__ mms; } ;
typedef TYPE_2__ MMSTContext ;
typedef TYPE_3__ MMSContext ;


 int AVERROR (int ) ;
 int AVIO_FLAG_READ_WRITE ;
 int AV_LOG_ERROR ;
 int AV_LOG_TRACE ;
 int EINVAL ;
 int SC_PKT_ASF_HEADER ;
 int SC_PKT_CLIENT_ACCEPTED ;
 int SC_PKT_HEADER_REQUEST_ACCEPTED ;
 int SC_PKT_MEDIA_FILE_DETAILS ;
 int SC_PKT_MEDIA_PKT_FOLLOWS ;
 int SC_PKT_PROTOCOL_ACCEPTED ;
 int SC_PKT_STREAM_ID_ACCEPTED ;
 int SC_PKT_TIMING_TEST_REPLY ;
 int av_log (TYPE_1__*,int ,char*,...) ;
 int av_url_split (int *,int ,int *,int ,int ,int,int*,int ,int,char const*) ;
 int clear_stream_buffers (TYPE_3__*) ;
 int ff_mms_asf_header_parser (TYPE_3__*) ;
 int ff_url_join (char*,int,char*,int *,int ,int,int *) ;
 int ffurl_open_whitelist (int *,char*,int ,int *,int *,int ,int ,TYPE_1__*) ;
 int mms_close (TYPE_1__*) ;
 int mms_safe_send_recv (TYPE_2__*,int *,int ) ;
 int * send_media_file_request ;
 int * send_media_header_request ;
 int * send_media_packet_request ;
 int * send_protocol_select ;
 int * send_startup_packet ;
 int * send_stream_selection_request ;
 int * send_time_test_data ;

__attribute__((used)) static int mms_open(URLContext *h, const char *uri, int flags)
{
    MMSTContext *mmst = h->priv_data;
    MMSContext *mms;
    int port, err;
    char tcpname[256];

    h->is_streamed = 1;
    mms = &mmst->mms;


    av_url_split(((void*)0), 0, ((void*)0), 0,
            mmst->host, sizeof(mmst->host), &port, mmst->path,
            sizeof(mmst->path), uri);

    if(port<0)
        port = 1755;


    ff_url_join(tcpname, sizeof(tcpname), "tcp", ((void*)0), mmst->host, port, ((void*)0));
    err = ffurl_open_whitelist(&mms->mms_hd, tcpname, AVIO_FLAG_READ_WRITE,
                               &h->interrupt_callback, ((void*)0),
                               h->protocol_whitelist, h->protocol_blacklist, h);
    if (err)
        goto fail;

    mmst->packet_id = 3;
    mmst->header_packet_id = 2;
    err = mms_safe_send_recv(mmst, send_startup_packet, SC_PKT_CLIENT_ACCEPTED);
    if (err)
        goto fail;
    err = mms_safe_send_recv(mmst, send_time_test_data, SC_PKT_TIMING_TEST_REPLY);
    if (err)
        goto fail;
    err = mms_safe_send_recv(mmst, send_protocol_select, SC_PKT_PROTOCOL_ACCEPTED);
    if (err)
        goto fail;
    err = mms_safe_send_recv(mmst, send_media_file_request, SC_PKT_MEDIA_FILE_DETAILS);
    if (err)
        goto fail;
    err = mms_safe_send_recv(mmst, send_media_header_request, SC_PKT_HEADER_REQUEST_ACCEPTED);
    if (err)
        goto fail;
    err = mms_safe_send_recv(mmst, ((void*)0), SC_PKT_ASF_HEADER);
    if (err)
        goto fail;
    if((mmst->incoming_flags != 0X08) && (mmst->incoming_flags != 0X0C)) {
        av_log(h, AV_LOG_ERROR,
               "The server does not support MMST (try MMSH or RTSP)\n");
        err = AVERROR(EINVAL);
        goto fail;
    }
    err = ff_mms_asf_header_parser(mms);
    if (err) {
        av_log(h, AV_LOG_TRACE, "asf header parsed failed!\n");
        goto fail;
    }
    mms->header_parsed = 1;

    if (!mms->asf_packet_len || !mms->stream_num)
        goto fail;

    clear_stream_buffers(mms);
    err = mms_safe_send_recv(mmst, send_stream_selection_request, SC_PKT_STREAM_ID_ACCEPTED);
    if (err)
        goto fail;

    err = mms_safe_send_recv(mmst, send_media_packet_request, SC_PKT_MEDIA_PKT_FOLLOWS);
    if (err) {
        goto fail;
    }
    av_log(h, AV_LOG_TRACE, "Leaving open (success)\n");
    return 0;
fail:
    mms_close(h);
    av_log(mms->mms_hd, AV_LOG_TRACE, "Leaving open (failure: %d)\n", err);
    return err;
}
