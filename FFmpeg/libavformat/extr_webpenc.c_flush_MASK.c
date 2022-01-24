#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_11__ {int size; char* data; scalar_t__ pts; scalar_t__ duration; } ;
struct TYPE_8__ {int wrote_webp_header; int frame_count; TYPE_6__ last_pkt; int /*<<< orphan*/  loop; } ;
typedef  TYPE_2__ WebpContext ;
struct TYPE_10__ {int /*<<< orphan*/  pb; TYPE_3__** streams; TYPE_2__* priv_data; } ;
struct TYPE_9__ {TYPE_1__* codecpar; } ;
struct TYPE_7__ {scalar_t__ width; scalar_t__ height; } ;
typedef  TYPE_3__ AVStream ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 scalar_t__ AV_NOPTS_VALUE ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC7(AVFormatContext *s, int trailer, int64_t pts)
{
    WebpContext *w = s->priv_data;
    AVStream *st = s->streams[0];

    if (w->last_pkt.size) {
        int skip = 0;
        unsigned flags = 0;
        int vp8x = 0;

        if (w->last_pkt.size < 4)
            return 0;
        if (FUNC0(w->last_pkt.data) == FUNC0("RIFF"))
            skip = 12;

        if (w->last_pkt.size < skip + 4)
            return 0;  // Safe to do this as a valid WebP bitstream is >=30 bytes.
        if (FUNC0(w->last_pkt.data + skip) == FUNC0("VP8X")) {
            flags |= w->last_pkt.data[skip + 4 + 4];
            vp8x = 1;
            skip += FUNC0(w->last_pkt.data + skip + 4) + 8;
        }

        if (!w->wrote_webp_header) {
            FUNC6(s->pb, "RIFF\0\0\0\0WEBP", 12);
            w->wrote_webp_header = 1;
            if (w->frame_count > 1)  // first non-empty packet
                w->frame_count = 1;  // so we don't count previous empty packets.
        }

        if (w->frame_count == 1) {
            if (!trailer) {
                vp8x = 1;
                flags |= 2 + 16;
            }

            if (vp8x) {
                FUNC6(s->pb, "VP8X", 4);
                FUNC5(s->pb, 10);
                FUNC2(s->pb, flags);
                FUNC4(s->pb, 0);
                FUNC4(s->pb, st->codecpar->width - 1);
                FUNC4(s->pb, st->codecpar->height - 1);
            }
            if (!trailer) {
                FUNC6(s->pb, "ANIM", 4);
                FUNC5(s->pb, 6);
                FUNC5(s->pb, 0xFFFFFFFF);
                FUNC3(s->pb, w->loop);
            }
        }

        if (w->frame_count > trailer) {
            FUNC6(s->pb, "ANMF", 4);
            FUNC5(s->pb, 16 + w->last_pkt.size - skip);
            FUNC4(s->pb, 0);
            FUNC4(s->pb, 0);
            FUNC4(s->pb, st->codecpar->width - 1);
            FUNC4(s->pb, st->codecpar->height - 1);
            if (w->last_pkt.pts != AV_NOPTS_VALUE && pts != AV_NOPTS_VALUE) {
                FUNC4(s->pb, pts - w->last_pkt.pts);
            } else
                FUNC4(s->pb, w->last_pkt.duration);
            FUNC2(s->pb, 0);
        }
        FUNC6(s->pb, w->last_pkt.data + skip, w->last_pkt.size - skip);
        FUNC1(&w->last_pkt);
    }

    return 0;
}