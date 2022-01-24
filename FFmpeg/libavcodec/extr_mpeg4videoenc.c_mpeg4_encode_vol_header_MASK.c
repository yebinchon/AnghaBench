#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int num; int den; } ;
struct TYPE_8__ {int quarter_sample; int vo_type; int workaround_bugs; int aspect_ratio_info; int low_delay; int time_increment_bits; int width; int height; int mpeg_quant; int /*<<< orphan*/  pb; TYPE_2__* avctx; scalar_t__ data_partitioning; scalar_t__ rtp_mode; scalar_t__ progressive_sequence; scalar_t__ max_b_frames; } ;
struct TYPE_6__ {int den; } ;
struct TYPE_7__ {int flags; int /*<<< orphan*/  inter_matrix; int /*<<< orphan*/  intra_matrix; TYPE_1__ time_base; TYPE_5__ sample_aspect_ratio; } ;
typedef  TYPE_3__ MpegEncContext ;

/* Variables and functions */
 int ADV_SIMPLE_VO_TYPE ; 
 int AV_CODEC_FLAG_BITEXACT ; 
 int /*<<< orphan*/  CONFIG_MPEG4_ENCODER ; 
 int FF_ASPECT_EXTENDED ; 
 int FF_BUG_MS ; 
 int /*<<< orphan*/  LIBAVCODEC_IDENT ; 
 int RECT_SHAPE ; 
 int SIMPLE_VO_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int*,int*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_5__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void FUNC6(MpegEncContext *s,
                                    int vo_number,
                                    int vol_number)
{
    int vo_ver_id;

    if (!CONFIG_MPEG4_ENCODER)
        return;

    if (s->max_b_frames || s->quarter_sample) {
        vo_ver_id  = 5;
        s->vo_type = ADV_SIMPLE_VO_TYPE;
    } else {
        vo_ver_id  = 1;
        s->vo_type = SIMPLE_VO_TYPE;
    }

    FUNC5(&s->pb, 16, 0);
    FUNC5(&s->pb, 16, 0x100 + vo_number);        /* video obj */
    FUNC5(&s->pb, 16, 0);
    FUNC5(&s->pb, 16, 0x120 + vol_number);       /* video obj layer */

    FUNC5(&s->pb, 1, 0);             /* random access vol */
    FUNC5(&s->pb, 8, s->vo_type);    /* video obj type indication */
    if (s->workaround_bugs & FF_BUG_MS) {
        FUNC5(&s->pb, 1, 0);         /* is obj layer id= no */
    } else {
        FUNC5(&s->pb, 1, 1);         /* is obj layer id= yes */
        FUNC5(&s->pb, 4, vo_ver_id); /* is obj layer ver id */
        FUNC5(&s->pb, 3, 1);         /* is obj layer priority */
    }

    s->aspect_ratio_info = FUNC2(s->avctx->sample_aspect_ratio);

    FUNC5(&s->pb, 4, s->aspect_ratio_info); /* aspect ratio info */
    if (s->aspect_ratio_info == FF_ASPECT_EXTENDED) {
        FUNC0(&s->avctx->sample_aspect_ratio.num, &s->avctx->sample_aspect_ratio.den,
                   s->avctx->sample_aspect_ratio.num,  s->avctx->sample_aspect_ratio.den, 255);
        FUNC5(&s->pb, 8, s->avctx->sample_aspect_ratio.num);
        FUNC5(&s->pb, 8, s->avctx->sample_aspect_ratio.den);
    }

    if (s->workaround_bugs & FF_BUG_MS) {
        FUNC5(&s->pb, 1, 0);         /* vol control parameters= no @@@ */
    } else {
        FUNC5(&s->pb, 1, 1);         /* vol control parameters= yes */
        FUNC5(&s->pb, 2, 1);         /* chroma format YUV 420/YV12 */
        FUNC5(&s->pb, 1, s->low_delay);
        FUNC5(&s->pb, 1, 0);         /* vbv parameters= no */
    }

    FUNC5(&s->pb, 2, RECT_SHAPE);    /* vol shape= rectangle */
    FUNC5(&s->pb, 1, 1);             /* marker bit */

    FUNC5(&s->pb, 16, s->avctx->time_base.den);
    if (s->time_increment_bits < 1)
        s->time_increment_bits = 1;
    FUNC5(&s->pb, 1, 1);             /* marker bit */
    FUNC5(&s->pb, 1, 0);             /* fixed vop rate=no */
    FUNC5(&s->pb, 1, 1);             /* marker bit */
    FUNC5(&s->pb, 13, s->width);     /* vol width */
    FUNC5(&s->pb, 1, 1);             /* marker bit */
    FUNC5(&s->pb, 13, s->height);    /* vol height */
    FUNC5(&s->pb, 1, 1);             /* marker bit */
    FUNC5(&s->pb, 1, s->progressive_sequence ? 0 : 1);
    FUNC5(&s->pb, 1, 1);             /* obmc disable */
    if (vo_ver_id == 1)
        FUNC5(&s->pb, 1, 0);       /* sprite enable */
    else
        FUNC5(&s->pb, 2, 0);       /* sprite enable */

    FUNC5(&s->pb, 1, 0);             /* not 8 bit == false */
    FUNC5(&s->pb, 1, s->mpeg_quant); /* quant type = (0 = H.263 style) */

    if (s->mpeg_quant) {
        FUNC4(&s->pb, s->avctx->intra_matrix);
        FUNC4(&s->pb, s->avctx->inter_matrix);
    }

    if (vo_ver_id != 1)
        FUNC5(&s->pb, 1, s->quarter_sample);
    FUNC5(&s->pb, 1, 1);             /* complexity estimation disable */
    FUNC5(&s->pb, 1, s->rtp_mode ? 0 : 1); /* resync marker disable */
    FUNC5(&s->pb, 1, s->data_partitioning ? 1 : 0);
    if (s->data_partitioning)
        FUNC5(&s->pb, 1, 0);         /* no rvlc */

    if (vo_ver_id != 1) {
        FUNC5(&s->pb, 1, 0);         /* newpred */
        FUNC5(&s->pb, 1, 0);         /* reduced res vop */
    }
    FUNC5(&s->pb, 1, 0);             /* scalability */

    FUNC3(&s->pb);

    /* user data */
    if (!(s->avctx->flags & AV_CODEC_FLAG_BITEXACT)) {
        FUNC5(&s->pb, 16, 0);
        FUNC5(&s->pb, 16, 0x1B2);    /* user_data */
        FUNC1(&s->pb, LIBAVCODEC_IDENT, 0);
    }
}