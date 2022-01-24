#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  char uint8_t ;
typedef  int /*<<< orphan*/  tmpstr ;
typedef  int /*<<< orphan*/  command ;
typedef  int /*<<< orphan*/  URLContext ;
struct TYPE_19__ {scalar_t__ buffer; } ;
struct TYPE_18__ {char* app; int /*<<< orphan*/ * nb_prev_pkt; int /*<<< orphan*/ * prev_pkt; int /*<<< orphan*/  out_chunk_size; int /*<<< orphan*/  stream; int /*<<< orphan*/  max_sent_unacked; int /*<<< orphan*/  in_chunk_size; } ;
struct TYPE_17__ {scalar_t__ type; char* data; int size; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ RTMPPacket ;
typedef  TYPE_2__ RTMPContext ;
typedef  TYPE_3__ GetByteContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int AVERROR_UNKNOWN ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_TRACE ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 scalar_t__ RTMP_CTRL_ABORT_MESSAGE ; 
 int /*<<< orphan*/  RTMP_NETWORK_CHANNEL ; 
 int RTMP_PKTDATA_DEFAULT_SIZE ; 
 scalar_t__ RTMP_PT_BYTES_READ ; 
 scalar_t__ RTMP_PT_CHUNK_SIZE ; 
 scalar_t__ RTMP_PT_INVOKE ; 
 scalar_t__ RTMP_PT_SET_PEER_BW ; 
 scalar_t__ RTMP_PT_USER_CONTROL ; 
 scalar_t__ RTMP_PT_WINDOW_ACK_SIZE ; 
 int /*<<< orphan*/  RTMP_SYSTEM_CHANNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char**,int) ; 
 int FUNC6 (scalar_t__,scalar_t__,char*,char*,int) ; 
 int FUNC7 (TYPE_3__*,double*) ; 
 scalar_t__ FUNC8 (TYPE_3__*,char*,int,int*) ; 
 int /*<<< orphan*/  FUNC9 (char**,char*) ; 
 int /*<<< orphan*/  FUNC10 (char**) ; 
 int /*<<< orphan*/  FUNC11 (char**,int) ; 
 int /*<<< orphan*/  FUNC12 (char**) ; 
 int /*<<< orphan*/  FUNC13 (char**) ; 
 int /*<<< orphan*/  FUNC14 (char**,char*) ; 
 int FUNC15 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC18 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC19 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC20 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC21 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC22 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC23 (char*,char*) ; 

__attribute__((used)) static int FUNC24(URLContext *s, RTMPContext *rt)
{
    RTMPPacket pkt = { 0 };
    uint8_t *p;
    const uint8_t *cp;
    int ret;
    char command[64];
    int stringlen;
    double seqnum;
    uint8_t tmpstr[256];
    GetByteContext gbc;

    // handle RTMP Protocol Control Messages
    for (;;) {
        if ((ret = FUNC18(rt->stream, &pkt, rt->in_chunk_size,
                                       &rt->prev_pkt[0], &rt->nb_prev_pkt[0])) < 0)
            return ret;
#ifdef DEBUG
        ff_rtmp_packet_dump(s, &pkt);
#endif
        if (pkt.type == RTMP_PT_CHUNK_SIZE) {
            if ((ret = FUNC20(s, &pkt)) < 0) {
                FUNC16(&pkt);
                return ret;
            }
        } else if (pkt.type == RTMP_CTRL_ABORT_MESSAGE) {
            FUNC0(s, AV_LOG_ERROR, "received abort message\n");
            FUNC16(&pkt);
            return AVERROR_UNKNOWN;
        } else if (pkt.type == RTMP_PT_BYTES_READ) {
            FUNC0(s, AV_LOG_TRACE, "received acknowledgement\n");
        } else if (pkt.type == RTMP_PT_WINDOW_ACK_SIZE) {
            if ((ret = FUNC22(s, &pkt)) < 0) {
                FUNC16(&pkt);
                return ret;
            }
        } else if (pkt.type == RTMP_PT_SET_PEER_BW) {
            if ((ret = FUNC21(s, &pkt)) < 0) {
                FUNC16(&pkt);
                return ret;
            }
        } else if (pkt.type == RTMP_PT_INVOKE) {
            // received RTMP Command Message
            break;
        } else {
            FUNC0(s, AV_LOG_ERROR, "Unknown control message type (%d)\n", pkt.type);
        }
        FUNC16(&pkt);
    }

    cp = pkt.data;
    FUNC2(&gbc, cp, pkt.size);
    if (FUNC8(&gbc, command, sizeof(command), &stringlen)) {
        FUNC0(s, AV_LOG_ERROR, "Unable to read command string\n");
        FUNC16(&pkt);
        return AVERROR_INVALIDDATA;
    }
    if (FUNC23(command, "connect")) {
        FUNC0(s, AV_LOG_ERROR, "Expecting connect, got %s\n", command);
        FUNC16(&pkt);
        return AVERROR_INVALIDDATA;
    }
    ret = FUNC7(&gbc, &seqnum);
    if (ret)
        FUNC0(s, AV_LOG_WARNING, "SeqNum not found\n");
    /* Here one could parse an AMF Object with data as flashVers and others. */
    ret = FUNC6(gbc.buffer,
                                 gbc.buffer + FUNC1(&gbc),
                                 "app", tmpstr, sizeof(tmpstr));
    if (ret)
        FUNC0(s, AV_LOG_WARNING, "App field not found in connect\n");
    if (!ret && FUNC23(tmpstr, rt->app))
        FUNC0(s, AV_LOG_WARNING, "App field don't match up: %s <-> %s\n",
               tmpstr, rt->app);
    FUNC16(&pkt);

    // Send Window Acknowledgement Size (as defined in specification)
    if ((ret = FUNC15(&pkt, RTMP_NETWORK_CHANNEL,
                                     RTMP_PT_WINDOW_ACK_SIZE, 0, 4)) < 0)
        return ret;
    p = pkt.data;
    // Inform the peer about how often we want acknowledgements about what
    // we send. (We don't check for the acknowledgements currently.)
    FUNC4(&p, rt->max_sent_unacked);
    pkt.size = p - pkt.data;
    ret = FUNC19(rt->stream, &pkt, rt->out_chunk_size,
                               &rt->prev_pkt[1], &rt->nb_prev_pkt[1]);
    FUNC16(&pkt);
    if (ret < 0)
        return ret;
    // Set Peer Bandwidth
    if ((ret = FUNC15(&pkt, RTMP_NETWORK_CHANNEL,
                                     RTMP_PT_SET_PEER_BW, 0, 5)) < 0)
        return ret;
    p = pkt.data;
    // Tell the peer to only send this many bytes unless it gets acknowledgements.
    // This could be any arbitrary value we want here.
    FUNC4(&p, rt->max_sent_unacked);
    FUNC5(&p, 2); // dynamic
    pkt.size = p - pkt.data;
    ret = FUNC19(rt->stream, &pkt, rt->out_chunk_size,
                               &rt->prev_pkt[1], &rt->nb_prev_pkt[1]);
    FUNC16(&pkt);
    if (ret < 0)
        return ret;

    // User control
    if ((ret = FUNC15(&pkt, RTMP_NETWORK_CHANNEL,
                                     RTMP_PT_USER_CONTROL, 0, 6)) < 0)
        return ret;

    p = pkt.data;
    FUNC3(&p, 0); // 0 -> Stream Begin
    FUNC4(&p, 0); // Stream 0
    ret = FUNC19(rt->stream, &pkt, rt->out_chunk_size,
                               &rt->prev_pkt[1], &rt->nb_prev_pkt[1]);
    FUNC16(&pkt);
    if (ret < 0)
        return ret;

    // Chunk size
    if ((ret = FUNC15(&pkt, RTMP_NETWORK_CHANNEL,
                                     RTMP_PT_CHUNK_SIZE, 0, 4)) < 0)
        return ret;

    p = pkt.data;
    FUNC4(&p, rt->out_chunk_size);
    ret = FUNC19(rt->stream, &pkt, rt->out_chunk_size,
                               &rt->prev_pkt[1], &rt->nb_prev_pkt[1]);
    FUNC16(&pkt);
    if (ret < 0)
        return ret;

    // Send _result NetConnection.Connect.Success to connect
    if ((ret = FUNC15(&pkt, RTMP_SYSTEM_CHANNEL,
                                     RTMP_PT_INVOKE, 0,
                                     RTMP_PKTDATA_DEFAULT_SIZE)) < 0)
        return ret;

    p = pkt.data;
    FUNC14(&p, "_result");
    FUNC11(&p, seqnum);

    FUNC13(&p);
    FUNC9(&p, "fmsVer");
    FUNC14(&p, "FMS/3,0,1,123");
    FUNC9(&p, "capabilities");
    FUNC11(&p, 31);
    FUNC12(&p);

    FUNC13(&p);
    FUNC9(&p, "level");
    FUNC14(&p, "status");
    FUNC9(&p, "code");
    FUNC14(&p, "NetConnection.Connect.Success");
    FUNC9(&p, "description");
    FUNC14(&p, "Connection succeeded.");
    FUNC9(&p, "objectEncoding");
    FUNC11(&p, 0);
    FUNC12(&p);

    pkt.size = p - pkt.data;
    ret = FUNC19(rt->stream, &pkt, rt->out_chunk_size,
                               &rt->prev_pkt[1], &rt->nb_prev_pkt[1]);
    FUNC16(&pkt);
    if (ret < 0)
        return ret;

    if ((ret = FUNC15(&pkt, RTMP_SYSTEM_CHANNEL,
                                     RTMP_PT_INVOKE, 0, 30)) < 0)
        return ret;
    p = pkt.data;
    FUNC14(&p, "onBWDone");
    FUNC11(&p, 0);
    FUNC10(&p);
    FUNC11(&p, 8192);
    pkt.size = p - pkt.data;
    ret = FUNC19(rt->stream, &pkt, rt->out_chunk_size,
                               &rt->prev_pkt[1], &rt->nb_prev_pkt[1]);
    FUNC16(&pkt);

    return ret;
}