#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  pb; TYPE_1__* priv_data; } ;
struct TYPE_10__ {int data; int stream_index; int duration; int size; int /*<<< orphan*/  flags; } ;
struct TYPE_9__ {scalar_t__ cur_frame; scalar_t__ frames; int curstrm; unsigned int pktsize; int flags; int gmcsize; int gmc; int sndsize; int block_align; scalar_t__ has_video; } ;
typedef  TYPE_1__ SIFFContext ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_PKT_FLAG_KEY ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 int VB_HAS_AUDIO ; 
 int VB_HAS_GMC ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ,int,unsigned int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int,int,int) ; 

__attribute__((used)) static int FUNC10(AVFormatContext *s, AVPacket *pkt)
{
    SIFFContext *c = s->priv_data;

    if (c->has_video) {
        unsigned int size;
        if (c->cur_frame >= c->frames)
            return AVERROR_EOF;
        if (c->curstrm == -1) {
            c->pktsize = FUNC7(s->pb) - 4;
            c->flags   = FUNC6(s->pb);
            c->gmcsize = (c->flags & VB_HAS_GMC) ? 4 : 0;
            if (c->gmcsize)
                FUNC5(s->pb, c->gmc, c->gmcsize);
            c->sndsize = (c->flags & VB_HAS_AUDIO) ? FUNC7(s->pb) : 0;
            c->curstrm = !!(c->flags & VB_HAS_AUDIO);
        }

        if (!c->curstrm) {
            if (c->pktsize < 2LL + c->sndsize + c->gmcsize)
                return AVERROR_INVALIDDATA;

            size = c->pktsize - c->sndsize - c->gmcsize - 2;
            size = FUNC8(s->pb, size);
            if (FUNC3(pkt, size + c->gmcsize + 2) < 0)
                return FUNC0(ENOMEM);
            FUNC1(pkt->data, c->flags);
            if (c->gmcsize)
                FUNC9(pkt->data + 2, c->gmc, c->gmcsize);
            if (FUNC5(s->pb, pkt->data + 2 + c->gmcsize, size) != size) {
                FUNC4(pkt);
                return AVERROR_INVALIDDATA;
            }
            pkt->stream_index = 0;
            c->curstrm        = -1;
        } else {
            int pktsize = FUNC2(s->pb, pkt, c->sndsize - 4);
            if (pktsize < 0)
                return FUNC0(EIO);
            pkt->stream_index = 1;
            pkt->duration     = pktsize;
            c->curstrm        = 0;
        }
        if (!c->cur_frame || c->curstrm)
            pkt->flags |= AV_PKT_FLAG_KEY;
        if (c->curstrm == -1)
            c->cur_frame++;
    } else {
        int pktsize = FUNC2(s->pb, pkt, c->block_align);
        if (!pktsize)
            return AVERROR_EOF;
        if (pktsize <= 0)
            return FUNC0(EIO);
        pkt->duration = pktsize;
    }
    return pkt->size;
}