#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  filename ;
typedef  int /*<<< orphan*/  command ;
struct TYPE_13__ {char* filename; TYPE_3__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_15__ {int nb_streamid; int /*<<< orphan*/ * nb_prev_pkt; int /*<<< orphan*/ * prev_pkt; int /*<<< orphan*/  out_chunk_size; int /*<<< orphan*/  stream; int /*<<< orphan*/  state; } ;
struct TYPE_14__ {int size; int /*<<< orphan*/ * data; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ RTMPPacket ;
typedef  TYPE_3__ RTMPContext ;
typedef  int /*<<< orphan*/  GetByteContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  RTMP_PKTDATA_DEFAULT_SIZE ; 
 int /*<<< orphan*/  RTMP_PT_INVOKE ; 
 int /*<<< orphan*/  RTMP_SYSTEM_CHANNEL ; 
 int /*<<< orphan*/  STATE_RECEIVING ; 
 int /*<<< orphan*/  STATE_SENDING ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,double*) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,double) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,char*) ; 
 int FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int FUNC11 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (char*,char*) ; 
 char* FUNC13 (char*,char) ; 
 int FUNC14 (TYPE_1__*) ; 
 int FUNC15 (TYPE_1__*,TYPE_2__*,char*,char*) ; 

__attribute__((used)) static int FUNC16(URLContext *s, RTMPPacket *pkt)
{
    RTMPContext *rt = s->priv_data;
    double seqnum;
    char filename[128];
    char command[64];
    int stringlen;
    char *pchar;
    const uint8_t *p = pkt->data;
    uint8_t *pp      = NULL;
    RTMPPacket spkt  = { 0 };
    GetByteContext gbc;
    int ret;

    FUNC2(&gbc, p, pkt->size);
    if (FUNC5(&gbc, command, sizeof(command),
                           &stringlen)) {
        FUNC1(s, AV_LOG_ERROR, "Error in PT_INVOKE\n");
        return AVERROR_INVALIDDATA;
    }

    ret = FUNC4(&gbc, &seqnum);
    if (ret)
        return ret;
    ret = FUNC3(&gbc);
    if (ret)
        return ret;
    if (!FUNC12(command, "FCPublish") ||
        !FUNC12(command, "publish")) {
        ret = FUNC5(&gbc, filename,
                                 sizeof(filename), &stringlen);
        if (ret) {
            if (ret == FUNC0(EINVAL))
                FUNC1(s, AV_LOG_ERROR, "Unable to parse stream name - name too long?\n");
            else
                FUNC1(s, AV_LOG_ERROR, "Unable to parse stream name\n");
            return ret;
        }
        // check with url
        if (s->filename) {
            pchar = FUNC13(s->filename, '/');
            if (!pchar) {
                FUNC1(s, AV_LOG_WARNING,
                       "Unable to find / in url %s, bad format\n",
                       s->filename);
                pchar = s->filename;
            }
            pchar++;
            if (FUNC12(pchar, filename))
                FUNC1(s, AV_LOG_WARNING, "Unexpected stream %s, expecting"
                       " %s\n", filename, pchar);
        }
        rt->state = STATE_RECEIVING;
    }

    if (!FUNC12(command, "FCPublish")) {
        if ((ret = FUNC9(&spkt, RTMP_SYSTEM_CHANNEL,
                                         RTMP_PT_INVOKE, 0,
                                         RTMP_PKTDATA_DEFAULT_SIZE)) < 0) {
            FUNC1(s, AV_LOG_ERROR, "Unable to create response packet\n");
            return ret;
        }
        pp = spkt.data;
        FUNC8(&pp, "onFCPublish");
    } else if (!FUNC12(command, "publish")) {
        ret = FUNC14(s);
        if (ret < 0)
            return ret;

        // Send onStatus(NetStream.Publish.Start)
        return FUNC15(s, pkt, "NetStream.Publish.Start",
                           filename);
    } else if (!FUNC12(command, "play")) {
        ret = FUNC14(s);
        if (ret < 0)
            return ret;
        rt->state = STATE_SENDING;
        return FUNC15(s, pkt, "NetStream.Play.Start",
                            filename);
    } else {
        if ((ret = FUNC9(&spkt, RTMP_SYSTEM_CHANNEL,
                                         RTMP_PT_INVOKE, 0,
                                         RTMP_PKTDATA_DEFAULT_SIZE)) < 0) {
            FUNC1(s, AV_LOG_ERROR, "Unable to create response packet\n");
            return ret;
        }
        pp = spkt.data;
        FUNC8(&pp, "_result");
        FUNC7(&pp, seqnum);
        FUNC6(&pp);
        if (!FUNC12(command, "createStream")) {
            rt->nb_streamid++;
            if (rt->nb_streamid == 0 || rt->nb_streamid == 2)
                rt->nb_streamid++; /* Values 0 and 2 are reserved */
            FUNC7(&pp, rt->nb_streamid);
            /* By now we don't control which streams are removed in
             * deleteStream. There is no stream creation control
             * if a client creates more than 2^32 - 2 streams. */
        }
    }
    spkt.size = pp - spkt.data;
    ret = FUNC11(rt->stream, &spkt, rt->out_chunk_size,
                               &rt->prev_pkt[1], &rt->nb_prev_pkt[1]);
    FUNC10(&spkt);
    return ret;
}