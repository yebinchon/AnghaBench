#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  char uint8_t ;
typedef  int uint32_t ;
struct TYPE_8__ {int /*<<< orphan*/ * pb; TYPE_2__* priv_data; } ;
struct TYPE_7__ {int /*<<< orphan*/  rtsp_hd_out; } ;
struct TYPE_6__ {int interleaved_max; int interleaved_min; TYPE_3__* transport_priv; } ;
typedef  TYPE_1__ RTSPStream ;
typedef  TYPE_2__ RTSPState ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 scalar_t__ FUNC2 (char) ; 
 int /*<<< orphan*/  RTSP_TCP_MAX_PACKET_SIZE ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char**) ; 
 int FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 

int FUNC7(AVFormatContext *s, RTSPStream *rtsp_st)
{
    RTSPState *rt = s->priv_data;
    AVFormatContext *rtpctx = rtsp_st->transport_priv;
    uint8_t *buf, *ptr;
    int size;
    uint8_t *interleave_header, *interleaved_packet;

    size = FUNC4(rtpctx->pb, &buf);
    rtpctx->pb = NULL;
    ptr = buf;
    while (size > 4) {
        uint32_t packet_len = FUNC0(ptr);
        int id;
        /* The interleaving header is exactly 4 bytes, which happens to be
         * the same size as the packet length header from
         * ffio_open_dyn_packet_buf. So by writing the interleaving header
         * over these bytes, we get a consecutive interleaved packet
         * that can be written in one call. */
        interleaved_packet = interleave_header = ptr;
        ptr += 4;
        size -= 4;
        if (packet_len > size || packet_len < 2)
            break;
        if (FUNC2(ptr[1]))
            id = rtsp_st->interleaved_max; /* RTCP */
        else
            id = rtsp_st->interleaved_min; /* RTP */
        interleave_header[0] = '$';
        interleave_header[1] = id;
        FUNC1(interleave_header + 2, packet_len);
        FUNC6(rt->rtsp_hd_out, interleaved_packet, 4 + packet_len);
        ptr += packet_len;
        size -= packet_len;
    }
    FUNC3(buf);
    return FUNC5(&rtpctx->pb, RTSP_TCP_MAX_PACKET_SIZE);
}