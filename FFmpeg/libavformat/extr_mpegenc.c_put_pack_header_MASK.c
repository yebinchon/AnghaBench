#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  scalar_t__ timestamp ;
typedef  int int64_t ;
struct TYPE_12__ {TYPE_2__* priv_data; } ;
struct TYPE_11__ {int mux_rate; scalar_t__ is_mpeg2; } ;
struct TYPE_10__ {int buf; } ;
typedef  TYPE_1__ PutBitContext ;
typedef  TYPE_2__ MpegMuxContext ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  PACK_START_CODE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(AVFormatContext *ctx, uint8_t *buf,
                           int64_t timestamp)
{
    MpegMuxContext *s = ctx->priv_data;
    PutBitContext pb;

    FUNC1(&pb, buf, 128);

    FUNC3(&pb, PACK_START_CODE);
    if (s->is_mpeg2)
        FUNC2(&pb, 2, 0x1);
    else
        FUNC2(&pb, 4, 0x2);
    FUNC2(&pb,  3, (uint32_t)((timestamp >> 30) & 0x07));
    FUNC2(&pb,  1, 1);
    FUNC2(&pb, 15, (uint32_t)((timestamp >> 15) & 0x7fff));
    FUNC2(&pb,  1, 1);
    FUNC2(&pb, 15, (uint32_t)((timestamp)       & 0x7fff));
    FUNC2(&pb,  1, 1);
    if (s->is_mpeg2)
        /* clock extension */
        FUNC2(&pb, 9, 0);
    FUNC2(&pb, 1, 1);
    FUNC2(&pb, 22, s->mux_rate);
    FUNC2(&pb, 1, 1);
    if (s->is_mpeg2) {
        FUNC2(&pb, 1, 1);
        FUNC2(&pb, 5, 0x1f); /* reserved */
        FUNC2(&pb, 3, 0); /* stuffing length */
    }
    FUNC0(&pb);
    return FUNC4(&pb) - pb.buf;
}