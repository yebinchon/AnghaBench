#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int int64_t ;
struct TYPE_10__ {int num; int den; } ;
struct TYPE_9__ {int custom_pcf; int picture_number; int width; int height; scalar_t__ pict_type; int obmc; int qscale; int umvplus; int h263_aic; int loop_filter; int h263_slice_structured; int alt_inter_vlc; int modified_quant; int no_rounding; int aspect_ratio_info; scalar_t__ mb_x; scalar_t__ mb_y; int /*<<< orphan*/  pb; TYPE_2__* avctx; scalar_t__ h263_plus; int /*<<< orphan*/  ptr_lastgob; } ;
struct TYPE_7__ {long long num; long long den; } ;
struct TYPE_8__ {TYPE_6__ sample_aspect_ratio; TYPE_1__ time_base; } ;
typedef  TYPE_3__ MpegEncContext ;

/* Variables and functions */
 scalar_t__ AV_PICTURE_TYPE_P ; 
 int FUNC0 (long long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FF_ASPECT_EXTENDED ; 
 int INT_MAX ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_6__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  ff_h263_format ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int) ; 

void FUNC11(MpegEncContext * s, int picture_number)
{
    int format, coded_frame_rate, coded_frame_rate_base, i, temp_ref;
    int best_clock_code=1;
    int best_divisor=60;
    int best_error= INT_MAX;

    if(s->h263_plus){
        for(i=0; i<2; i++){
            int div, error;
            div= (s->avctx->time_base.num*1800000LL + 500LL*s->avctx->time_base.den) / ((1000LL+i)*s->avctx->time_base.den);
            div= FUNC3(div, 1, 127);
            error= FUNC0(s->avctx->time_base.num*1800000LL - (1000LL+i)*s->avctx->time_base.den*div);
            if(error < best_error){
                best_error= error;
                best_divisor= div;
                best_clock_code= i;
            }
        }
    }
    s->custom_pcf= best_clock_code!=1 || best_divisor!=60;
    coded_frame_rate= 1800000;
    coded_frame_rate_base= (1000+best_clock_code)*best_divisor;

    FUNC4(&s->pb);

    /* Update the pointer to last GOB */
    s->ptr_lastgob = FUNC9(&s->pb);
    FUNC8(&s->pb, 22, 0x20); /* PSC */
    temp_ref= s->picture_number * (int64_t)coded_frame_rate * s->avctx->time_base.num / //FIXME use timestamp
                         (coded_frame_rate_base * (int64_t)s->avctx->time_base.den);
    FUNC10(&s->pb, 8, temp_ref); /* TemporalReference */

    FUNC8(&s->pb, 1, 1);     /* marker */
    FUNC8(&s->pb, 1, 0);     /* H.263 id */
    FUNC8(&s->pb, 1, 0);     /* split screen off */
    FUNC8(&s->pb, 1, 0);     /* camera  off */
    FUNC8(&s->pb, 1, 0);     /* freeze picture release off */

    format = FUNC7(ff_h263_format, FUNC1(ff_h263_format), s->width, s->height);
    if (!s->h263_plus) {
        /* H.263v1 */
        FUNC8(&s->pb, 3, format);
        FUNC8(&s->pb, 1, (s->pict_type == AV_PICTURE_TYPE_P));
        /* By now UMV IS DISABLED ON H.263v1, since the restrictions
        of H.263v1 UMV implies to check the predicted MV after
        calculation of the current MB to see if we're on the limits */
        FUNC8(&s->pb, 1, 0);         /* Unrestricted Motion Vector: off */
        FUNC8(&s->pb, 1, 0);         /* SAC: off */
        FUNC8(&s->pb, 1, s->obmc);   /* Advanced Prediction */
        FUNC8(&s->pb, 1, 0);         /* only I/P-frames, no PB-frame */
        FUNC8(&s->pb, 5, s->qscale);
        FUNC8(&s->pb, 1, 0);         /* Continuous Presence Multipoint mode: off */
    } else {
        int ufep=1;
        /* H.263v2 */
        /* H.263 Plus PTYPE */

        FUNC8(&s->pb, 3, 7);
        FUNC8(&s->pb,3,ufep); /* Update Full Extended PTYPE */
        if (format == 8)
            FUNC8(&s->pb,3,6); /* Custom Source Format */
        else
            FUNC8(&s->pb, 3, format);

        FUNC8(&s->pb,1, s->custom_pcf);
        FUNC8(&s->pb,1, s->umvplus); /* Unrestricted Motion Vector */
        FUNC8(&s->pb,1,0); /* SAC: off */
        FUNC8(&s->pb,1,s->obmc); /* Advanced Prediction Mode */
        FUNC8(&s->pb,1,s->h263_aic); /* Advanced Intra Coding */
        FUNC8(&s->pb,1,s->loop_filter); /* Deblocking Filter */
        FUNC8(&s->pb,1,s->h263_slice_structured); /* Slice Structured */
        FUNC8(&s->pb,1,0); /* Reference Picture Selection: off */
        FUNC8(&s->pb,1,0); /* Independent Segment Decoding: off */
        FUNC8(&s->pb,1,s->alt_inter_vlc); /* Alternative Inter VLC */
        FUNC8(&s->pb,1,s->modified_quant); /* Modified Quantization: */
        FUNC8(&s->pb,1,1); /* "1" to prevent start code emulation */
        FUNC8(&s->pb,3,0); /* Reserved */

        FUNC8(&s->pb, 3, s->pict_type == AV_PICTURE_TYPE_P);

        FUNC8(&s->pb,1,0); /* Reference Picture Resampling: off */
        FUNC8(&s->pb,1,0); /* Reduced-Resolution Update: off */
        FUNC8(&s->pb,1,s->no_rounding); /* Rounding Type */
        FUNC8(&s->pb,2,0); /* Reserved */
        FUNC8(&s->pb,1,1); /* "1" to prevent start code emulation */

        /* This should be here if PLUSPTYPE */
        FUNC8(&s->pb, 1, 0); /* Continuous Presence Multipoint mode: off */

        if (format == 8) {
            /* Custom Picture Format (CPFMT) */
            s->aspect_ratio_info= FUNC5(s->avctx->sample_aspect_ratio);

            FUNC8(&s->pb,4,s->aspect_ratio_info);
            FUNC8(&s->pb,9,(s->width >> 2) - 1);
            FUNC8(&s->pb,1,1); /* "1" to prevent start code emulation */
            FUNC8(&s->pb,9,(s->height >> 2));
            if (s->aspect_ratio_info == FF_ASPECT_EXTENDED){
                FUNC8(&s->pb, 8, s->avctx->sample_aspect_ratio.num);
                FUNC8(&s->pb, 8, s->avctx->sample_aspect_ratio.den);
            }
        }
        if(s->custom_pcf){
            if(ufep){
                FUNC8(&s->pb, 1, best_clock_code);
                FUNC8(&s->pb, 7, best_divisor);
            }
            FUNC10(&s->pb, 2, temp_ref>>8);
        }

        /* Unlimited Unrestricted Motion Vectors Indicator (UUI) */
        if (s->umvplus)
//            put_bits(&s->pb,1,1); /* Limited according tables of Annex D */
//FIXME check actual requested range
            FUNC8(&s->pb,2,1); /* unlimited */
        if(s->h263_slice_structured)
            FUNC8(&s->pb,2,0); /* no weird submodes */

        FUNC8(&s->pb, 5, s->qscale);
    }

    FUNC8(&s->pb, 1, 0);     /* no PEI */

    if(s->h263_slice_structured){
        FUNC8(&s->pb, 1, 1);

        FUNC2(s->mb_x == 0 && s->mb_y == 0);
        FUNC6(s);

        FUNC8(&s->pb, 1, 1);
    }
}