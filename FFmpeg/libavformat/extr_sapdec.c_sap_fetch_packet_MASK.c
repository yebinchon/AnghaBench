#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  scalar_t__ uint16_t ;
struct pollfd {int member_0; int member_1; int revents; int /*<<< orphan*/  member_2; } ;
struct SAPState {int eof; scalar_t__ hash; TYPE_7__* sdp_ctx; int /*<<< orphan*/  ann_fd; } ;
typedef  int /*<<< orphan*/  recvbuf ;
struct TYPE_11__ {int nb_streams; TYPE_1__** streams; } ;
struct TYPE_10__ {int ctx_flags; int nb_streams; struct SAPState* priv_data; } ;
struct TYPE_9__ {int id; int /*<<< orphan*/  time_base; int /*<<< orphan*/  codecpar; } ;
struct TYPE_8__ {int /*<<< orphan*/  time_base; int /*<<< orphan*/  codecpar; } ;
typedef  TYPE_2__ AVStream ;
typedef  int /*<<< orphan*/  AVPacket ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int AVFMTCTX_NOHEADER ; 
 scalar_t__ FUNC1 (int*) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int POLLIN ; 
 int RTP_MAX_PACKET_LENGTH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_7__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int*,int) ; 
 int FUNC8 (struct pollfd*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(AVFormatContext *s, AVPacket *pkt)
{
    struct SAPState *sap = s->priv_data;
    int fd = FUNC6(sap->ann_fd);
    int n, ret;
    struct pollfd p = {fd, POLLIN, 0};
    uint8_t recvbuf[RTP_MAX_PACKET_LENGTH];

    if (sap->eof)
        return AVERROR_EOF;

    while (1) {
        n = FUNC8(&p, 1, 0);
        if (n <= 0 || !(p.revents & POLLIN))
            break;
        ret = FUNC7(sap->ann_fd, recvbuf, sizeof(recvbuf));
        if (ret >= 8) {
            uint16_t hash = FUNC1(&recvbuf[2]);
            /* Should ideally check the source IP address, too */
            if (recvbuf[0] & 0x04 && hash == sap->hash) {
                /* Stream deletion */
                sap->eof = 1;
                return AVERROR_EOF;
            }
        }
    }
    ret = FUNC3(sap->sdp_ctx, pkt);
    if (ret < 0)
        return ret;
    if (s->ctx_flags & AVFMTCTX_NOHEADER) {
        while (sap->sdp_ctx->nb_streams > s->nb_streams) {
            int i = s->nb_streams;
            AVStream *st = FUNC5(s, NULL);
            if (!st) {
                FUNC2(pkt);
                return FUNC0(ENOMEM);
            }
            st->id = i;
            FUNC4(st->codecpar, sap->sdp_ctx->streams[i]->codecpar);
            st->time_base = sap->sdp_ctx->streams[i]->time_base;
        }
    }
    return ret;
}