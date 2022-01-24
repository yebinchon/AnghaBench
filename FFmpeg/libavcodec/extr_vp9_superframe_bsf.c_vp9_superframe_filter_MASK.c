#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int n_cache; TYPE_2__** cache; } ;
typedef  TYPE_1__ VP9BSFContext ;
struct TYPE_18__ {TYPE_1__* priv_data; } ;
struct TYPE_17__ {int* data; int size; } ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVBSFContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  ENOSYS ; 
 int MAX_CACHE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int FUNC6 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int*,int) ; 
 int FUNC10 (TYPE_2__**,int,TYPE_2__*) ; 

__attribute__((used)) static int FUNC11(AVBSFContext *ctx, AVPacket *pkt)
{
    GetBitContext gb;
    VP9BSFContext *s = ctx->priv_data;
    int res, invisible, profile, marker, uses_superframe_syntax = 0, n;

    res = FUNC6(ctx, pkt);
    if (res < 0)
        return res;

    marker = pkt->data[pkt->size - 1];
    if ((marker & 0xe0) == 0xc0) {
        int nbytes = 1 + ((marker >> 3) & 0x3);
        int n_frames = 1 + (marker & 0x7), idx_sz = 2 + n_frames * nbytes;

        uses_superframe_syntax = pkt->size >= idx_sz && pkt->data[pkt->size - idx_sz] == marker;
    }

    if ((res = FUNC9(&gb, pkt->data, pkt->size)) < 0)
        goto done;

    FUNC7(&gb, 2); // frame marker
    profile  = FUNC8(&gb);
    profile |= FUNC8(&gb) << 1;
    if (profile == 3) profile += FUNC8(&gb);

    if (FUNC8(&gb)) {
        invisible = 0;
    } else {
        FUNC8(&gb); // keyframe
        invisible = !FUNC8(&gb);
    }

    if (uses_superframe_syntax && s->n_cache > 0) {
        FUNC2(ctx, AV_LOG_ERROR,
               "Mixing of superframe syntax and naked VP9 frames not supported\n");
        res = FUNC0(ENOSYS);
        goto done;
    } else if ((!invisible || uses_superframe_syntax) && !s->n_cache) {
        // passthrough
        return 0;
    } else if (s->n_cache + 1 >= MAX_CACHE) {
        FUNC2(ctx, AV_LOG_ERROR,
               "Too many invisible frames\n");
        res = AVERROR_INVALIDDATA;
        goto done;
    }

    FUNC4(s->cache[s->n_cache++], pkt);

    if (invisible) {
        return FUNC0(EAGAIN);
    }
    FUNC1(s->n_cache > 0);

    // build superframe
    if ((res = FUNC10(s->cache, s->n_cache, pkt)) < 0)
        goto done;

    res = FUNC3(pkt, s->cache[s->n_cache - 1]);
    if (res < 0)
        goto done;

    for (n = 0; n < s->n_cache; n++)
        FUNC5(s->cache[n]);
    s->n_cache = 0;

done:
    if (res < 0)
        FUNC5(pkt);
    return res;
}