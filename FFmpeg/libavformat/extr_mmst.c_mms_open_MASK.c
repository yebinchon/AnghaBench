#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tcpname ;
struct TYPE_11__ {int is_streamed; int /*<<< orphan*/  protocol_blacklist; int /*<<< orphan*/  protocol_whitelist; int /*<<< orphan*/  interrupt_callback; TYPE_2__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_13__ {int header_parsed; int /*<<< orphan*/  mms_hd; int /*<<< orphan*/  stream_num; int /*<<< orphan*/  asf_packet_len; } ;
struct TYPE_12__ {int packet_id; int header_packet_id; int incoming_flags; int /*<<< orphan*/  host; int /*<<< orphan*/  path; TYPE_3__ mms; } ;
typedef  TYPE_2__ MMSTContext ;
typedef  TYPE_3__ MMSContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVIO_FLAG_READ_WRITE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_TRACE ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  SC_PKT_ASF_HEADER ; 
 int /*<<< orphan*/  SC_PKT_CLIENT_ACCEPTED ; 
 int /*<<< orphan*/  SC_PKT_HEADER_REQUEST_ACCEPTED ; 
 int /*<<< orphan*/  SC_PKT_MEDIA_FILE_DETAILS ; 
 int /*<<< orphan*/  SC_PKT_MEDIA_PKT_FOLLOWS ; 
 int /*<<< orphan*/  SC_PKT_PROTOCOL_ACCEPTED ; 
 int /*<<< orphan*/  SC_PKT_STREAM_ID_ACCEPTED ; 
 int /*<<< orphan*/  SC_PKT_TIMING_TEST_REPLY ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ ,int,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int FUNC8 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * send_media_file_request ; 
 int /*<<< orphan*/ * send_media_header_request ; 
 int /*<<< orphan*/ * send_media_packet_request ; 
 int /*<<< orphan*/ * send_protocol_select ; 
 int /*<<< orphan*/ * send_startup_packet ; 
 int /*<<< orphan*/ * send_stream_selection_request ; 
 int /*<<< orphan*/ * send_time_test_data ; 

__attribute__((used)) static int FUNC9(URLContext *h, const char *uri, int flags)
{
    MMSTContext *mmst = h->priv_data;
    MMSContext *mms;
    int port, err;
    char tcpname[256];

    h->is_streamed = 1;
    mms = &mmst->mms;

    // only for MMS over TCP, so set proto = NULL
    FUNC2(NULL, 0, NULL, 0,
            mmst->host, sizeof(mmst->host), &port, mmst->path,
            sizeof(mmst->path), uri);

    if(port<0)
        port = 1755; // default MMS protocol port

    // establish tcp connection.
    FUNC5(tcpname, sizeof(tcpname), "tcp", NULL, mmst->host, port, NULL);
    err = FUNC6(&mms->mms_hd, tcpname, AVIO_FLAG_READ_WRITE,
                               &h->interrupt_callback, NULL,
                               h->protocol_whitelist, h->protocol_blacklist, h);
    if (err)
        goto fail;

    mmst->packet_id        = 3;          // default, initial value.
    mmst->header_packet_id = 2;          // default, initial value.
    err = FUNC8(mmst, send_startup_packet, SC_PKT_CLIENT_ACCEPTED);
    if (err)
        goto fail;
    err = FUNC8(mmst, send_time_test_data, SC_PKT_TIMING_TEST_REPLY);
    if (err)
        goto fail;
    err = FUNC8(mmst, send_protocol_select, SC_PKT_PROTOCOL_ACCEPTED);
    if (err)
        goto fail;
    err = FUNC8(mmst, send_media_file_request, SC_PKT_MEDIA_FILE_DETAILS);
    if (err)
        goto fail;
    err = FUNC8(mmst, send_media_header_request, SC_PKT_HEADER_REQUEST_ACCEPTED);
    if (err)
        goto fail;
    err = FUNC8(mmst, NULL, SC_PKT_ASF_HEADER);
    if (err)
        goto fail;
    if((mmst->incoming_flags != 0X08) && (mmst->incoming_flags != 0X0C)) {
        FUNC1(h, AV_LOG_ERROR,
               "The server does not support MMST (try MMSH or RTSP)\n");
        err = FUNC0(EINVAL);
        goto fail;
    }
    err = FUNC4(mms);
    if (err) {
        FUNC1(h, AV_LOG_TRACE, "asf header parsed failed!\n");
        goto fail;
    }
    mms->header_parsed = 1;

    if (!mms->asf_packet_len || !mms->stream_num)
        goto fail;

    FUNC3(mms);
    err = FUNC8(mmst, send_stream_selection_request, SC_PKT_STREAM_ID_ACCEPTED);
    if (err)
        goto fail;
    // send media packet request
    err = FUNC8(mmst, send_media_packet_request, SC_PKT_MEDIA_PKT_FOLLOWS);
    if (err) {
        goto fail;
    }
    FUNC1(h, AV_LOG_TRACE, "Leaving open (success)\n");
    return 0;
fail:
    FUNC7(h);
    FUNC1(mms->mms_hd, AV_LOG_TRACE, "Leaving open (failure: %d)\n", err);
    return err;
}