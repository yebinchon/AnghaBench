#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* codecpar; TYPE_2__* priv_data; } ;
struct TYPE_6__ {int first_gop_closed; int p_per_gop; int b_per_i_or_p; } ;
struct TYPE_5__ {scalar_t__ format; scalar_t__ codec_id; } ;
typedef  TYPE_2__ GXFStreamContext ;
typedef  TYPE_3__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 scalar_t__ AV_CODEC_ID_MPEG1VIDEO ; 
 scalar_t__ AV_CODEC_ID_MPEG2VIDEO ; 
 scalar_t__ AV_PIX_FMT_YUV422P ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC1(AVIOContext *pb, AVStream *st)
{
    GXFStreamContext *sc = st->priv_data;

    if (st->codecpar->format == AV_PIX_FMT_YUV422P)
        FUNC0(pb, 2);
    else
        FUNC0(pb, 1); /* default to 420 */
    FUNC0(pb, sc->first_gop_closed == 1); /* closed = 1, open = 0, unknown = 255 */
    FUNC0(pb, 3); /* top = 1, bottom = 2, frame = 3, unknown = 0 */
    FUNC0(pb, 1); /* I picture per GOP */
    FUNC0(pb, sc->p_per_gop);
    FUNC0(pb, sc->b_per_i_or_p);
    if (st->codecpar->codec_id == AV_CODEC_ID_MPEG2VIDEO)
        FUNC0(pb, 2);
    else if (st->codecpar->codec_id == AV_CODEC_ID_MPEG1VIDEO)
        FUNC0(pb, 1);
    else
        FUNC0(pb, 0);
    FUNC0(pb, 0); /* reserved */
    return 32;
}