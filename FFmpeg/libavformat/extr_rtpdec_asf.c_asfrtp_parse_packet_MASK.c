#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_7__ ;
typedef  struct TYPE_30__   TYPE_6__ ;
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;
typedef  struct TYPE_24__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_31__ {int nb_streams; TYPE_1__** streams; TYPE_3__* priv_data; } ;
struct TYPE_30__ {int pos; scalar_t__ eof_reached; } ;
struct TYPE_29__ {size_t stream_index; } ;
struct TYPE_28__ {int /*<<< orphan*/  buf; TYPE_6__* pktbuf; TYPE_6__ pb; } ;
struct TYPE_27__ {int asf_pb_pos; TYPE_11__* asf_ctx; } ;
struct TYPE_26__ {scalar_t__ id; } ;
struct TYPE_25__ {scalar_t__ id; } ;
struct TYPE_24__ {TYPE_2__** streams; TYPE_6__* pb; } ;
typedef  TYPE_3__ RTSPState ;
typedef  TYPE_4__ PayloadContext ;
typedef  int /*<<< orphan*/  AVStream ;
typedef  TYPE_5__ AVPacket ;
typedef  TYPE_6__ AVIOContext ;
typedef  TYPE_7__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EIO ; 
 scalar_t__ FUNC1 (int,int) ; 
 int RTP_FLAG_MARKER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_6__**) ; 
 int FUNC7 (TYPE_6__*) ; 
 int FUNC8 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,int) ; 
 int FUNC10 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*,int /*<<< orphan*/  const*,int) ; 
 int FUNC12 (TYPE_11__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_6__**) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_6__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_6__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,scalar_t__) ; 

__attribute__((used)) static int FUNC17(AVFormatContext *s, PayloadContext *asf,
                               AVStream *st, AVPacket *pkt,
                               uint32_t *timestamp,
                               const uint8_t *buf, int len, uint16_t seq,
                               int flags)
{
    AVIOContext *pb = &asf->pb;
    int res, mflags, len_off;
    RTSPState *rt = s->priv_data;

    if (!rt->asf_ctx)
        return -1;

    if (len > 0) {
        int off, out_len = 0;

        if (len < 4)
            return -1;

        FUNC2(&asf->buf);

        FUNC14(pb, (uint8_t *)buf, len, 0, NULL, NULL, NULL, NULL);

        while (FUNC10(pb) + 4 < len) {
            int start_off = FUNC10(pb);

            mflags = FUNC7(pb);
            len_off = FUNC8(pb);
            if (mflags & 0x20)   /**< relative timestamp */
                FUNC9(pb, 4);
            if (mflags & 0x10)   /**< has duration */
                FUNC9(pb, 4);
            if (mflags & 0x8)    /**< has location ID */
                FUNC9(pb, 4);
            off = FUNC10(pb);

            if (!(mflags & 0x40)) {
                /**
                 * If 0x40 is not set, the len_off field specifies an offset
                 * of this packet's payload data in the complete (reassembled)
                 * ASF packet. This is used to spread one ASF packet over
                 * multiple RTP packets.
                 */
                if (asf->pktbuf && len_off != FUNC10(asf->pktbuf)) {
                    FUNC13(&asf->pktbuf);
                }
                if (!len_off && !asf->pktbuf &&
                    (res = FUNC6(&asf->pktbuf)) < 0)
                    return res;
                if (!asf->pktbuf)
                    return FUNC0(EIO);

                FUNC11(asf->pktbuf, buf + off, len - off);
                FUNC9(pb, len - off);
                if (!(flags & RTP_FLAG_MARKER))
                    return -1;
                out_len     = FUNC5(asf->pktbuf, &asf->buf);
                asf->pktbuf = NULL;
            } else {
                /**
                 * If 0x40 is set, the len_off field specifies the length of
                 * the next ASF packet that can be read from this payload
                 * data alone. This is commonly the same as the payload size,
                 * but could be less in case of packet splitting (i.e.
                 * multiple ASF packets in one RTP packet).
                 */

                int cur_len = start_off + len_off - off;
                int prev_len = out_len;
                out_len += cur_len;
                if (FUNC1(cur_len, len - off) < 0)
                    return -1;
                if ((res = FUNC4(&asf->buf, out_len)) < 0)
                    return res;
                FUNC16(asf->buf + prev_len, buf + off,
                       FUNC1(cur_len, len - off));
                FUNC9(pb, cur_len);
            }
        }

        FUNC15(pb, asf->buf, out_len);
        pb->pos += rt->asf_pb_pos;
        pb->eof_reached = 0;
        rt->asf_ctx->pb = pb;
    }

    for (;;) {
        int i;

        res = FUNC12(rt->asf_ctx, pkt);
        rt->asf_pb_pos = FUNC10(pb);
        if (res != 0)
            break;
        for (i = 0; i < s->nb_streams; i++) {
            if (s->streams[i]->id == rt->asf_ctx->streams[pkt->stream_index]->id) {
                pkt->stream_index = i;
                return 1; // FIXME: return 0 if last packet
            }
        }
        FUNC3(pkt);
    }

    return res == 1 ? -1 : res;
}