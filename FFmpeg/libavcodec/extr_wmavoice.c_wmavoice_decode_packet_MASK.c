#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int spillover_nbits; int nb_superframes; int sframe_cache_size; int skip_bits_next; int /*<<< orphan*/  pb; int /*<<< orphan*/  sframe_cache; int /*<<< orphan*/  gb; } ;
typedef  TYPE_1__ WMAVoiceContext ;
struct TYPE_10__ {int block_align; TYPE_1__* priv_data; } ;
struct TYPE_9__ {int size; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  SFRAME_CACHE_MAXSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int FUNC9 (TYPE_3__*,void*,int*) ; 

__attribute__((used)) static int FUNC10(AVCodecContext *ctx, void *data,
                                  int *got_frame_ptr, AVPacket *avpkt)
{
    WMAVoiceContext *s = ctx->priv_data;
    GetBitContext *gb = &s->gb;
    int size, res, pos;

    /* Packets are sometimes a multiple of ctx->block_align, with a packet
     * header at each ctx->block_align bytes. However, FFmpeg's ASF demuxer
     * feeds us ASF packets, which may concatenate multiple "codec" packets
     * in a single "muxer" packet, so we artificially emulate that by
     * capping the packet size at ctx->block_align. */
    for (size = avpkt->size; size > ctx->block_align; size -= ctx->block_align);
    FUNC4(&s->gb, avpkt->data, size);

    /* size == ctx->block_align is used to indicate whether we are dealing with
     * a new packet or a packet of which we already read the packet header
     * previously. */
    if (!(size % ctx->block_align)) { // new packet header
        if (!size) {
            s->spillover_nbits = 0;
            s->nb_superframes = 0;
        } else {
            if ((res = FUNC6(s)) < 0)
                return res;
            s->nb_superframes = res;
        }

        /* If the packet header specifies a s->spillover_nbits, then we want
         * to push out all data of the previous packet (+ spillover) before
         * continuing to parse new superframes in the current packet. */
        if (s->sframe_cache_size > 0) {
            int cnt = FUNC2(gb);
            if (cnt + s->spillover_nbits > avpkt->size * 8) {
                s->spillover_nbits = avpkt->size * 8 - cnt;
            }
            FUNC0(&s->pb, avpkt->data, size, gb, s->spillover_nbits);
            FUNC1(&s->pb);
            s->sframe_cache_size += s->spillover_nbits;
            if ((res = FUNC9(ctx, data, got_frame_ptr)) == 0 &&
                *got_frame_ptr) {
                cnt += s->spillover_nbits;
                s->skip_bits_next = cnt & 7;
                res = cnt >> 3;
                return res;
            } else
                FUNC8 (gb, s->spillover_nbits - cnt +
                                FUNC2(gb)); // resync
        } else if (s->spillover_nbits) {
            FUNC8(gb, s->spillover_nbits);  // resync
        }
    } else if (s->skip_bits_next)
        FUNC7(gb, s->skip_bits_next);

    /* Try parsing superframes in current packet */
    s->sframe_cache_size = 0;
    s->skip_bits_next = 0;
    pos = FUNC3(gb);
    if (s->nb_superframes-- == 0) {
        *got_frame_ptr = 0;
        return size;
    } else if (s->nb_superframes > 0) {
        if ((res = FUNC9(ctx, data, got_frame_ptr)) < 0) {
            return res;
        } else if (*got_frame_ptr) {
            int cnt = FUNC2(gb);
            s->skip_bits_next = cnt & 7;
            res = cnt >> 3;
            return res;
        }
    } else if ((s->sframe_cache_size = pos) > 0) {
        /* ... cache it for spillover in next packet */
        FUNC5(&s->pb, s->sframe_cache, SFRAME_CACHE_MAXSIZE);
        FUNC0(&s->pb, avpkt->data, size, gb, s->sframe_cache_size);
        // FIXME bad - just copy bytes as whole and add use the
        // skip_bits_next field
    }

    return size;
}