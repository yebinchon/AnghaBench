#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_7__ ;
typedef  struct TYPE_29__   TYPE_6__ ;
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
typedef  float uint32_t ;
typedef  int int64_t ;
typedef  float int32_t ;
struct TYPE_25__ {scalar_t__ replaygain; int volume; float replaygain_preamp; int volume_i; int* var_values; scalar_t__ eval_mode; scalar_t__ precision; int channels; int planes; TYPE_1__* fdsp; int /*<<< orphan*/  sample_fmt; int /*<<< orphan*/  (* scale_samples ) (scalar_t__,scalar_t__,int,int) ;int /*<<< orphan*/  samples_align; scalar_t__ replaygain_noclip; } ;
typedef  TYPE_2__ VolumeContext ;
struct TYPE_30__ {TYPE_6__** outputs; TYPE_2__* priv; } ;
struct TYPE_29__ {int frame_count_out; int /*<<< orphan*/  time_base; TYPE_7__* dst; } ;
struct TYPE_28__ {int nb_samples; int pkt_pos; scalar_t__* extended_data; int /*<<< orphan*/  format; int /*<<< orphan*/  pts; } ;
struct TYPE_27__ {scalar_t__ data; } ;
struct TYPE_26__ {scalar_t__ track_gain; scalar_t__ track_peak; scalar_t__ album_gain; scalar_t__ album_peak; } ;
struct TYPE_24__ {int /*<<< orphan*/  (* vector_dmul_scalar ) (double*,double const*,double,int) ;int /*<<< orphan*/  (* vector_fmul_scalar ) (float*,float const*,double,int) ;} ;
typedef  TYPE_3__ AVReplayGain ;
typedef  TYPE_4__ AVFrameSideData ;
typedef  TYPE_5__ AVFrame ;
typedef  TYPE_6__ AVFilterLink ;
typedef  TYPE_7__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_FRAME_DATA_REPLAYGAIN ; 
 int /*<<< orphan*/  AV_LOG_VERBOSE ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 scalar_t__ AV_SAMPLE_FMT_FLT ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ EVAL_MODE_FRAME ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,double) ; 
 scalar_t__ INT32_MIN ; 
 int NAN ; 
 scalar_t__ PRECISION_FIXED ; 
 scalar_t__ REPLAYGAIN_DROP ; 
 scalar_t__ REPLAYGAIN_IGNORE ; 
 scalar_t__ REPLAYGAIN_TRACK ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t VAR_N ; 
 size_t VAR_NB_CONSUMED_SAMPLES ; 
 size_t VAR_POS ; 
 size_t VAR_PTS ; 
 size_t VAR_STARTPTS ; 
 size_t VAR_STARTT ; 
 size_t VAR_T ; 
 int FUNC5 (TYPE_5__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__**) ; 
 TYPE_4__* FUNC7 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_7__*,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int FUNC14 (float) ; 
 int FUNC15 (TYPE_6__*,TYPE_5__*) ; 
 TYPE_5__* FUNC16 (TYPE_6__*,int) ; 
 scalar_t__ FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC20 (float*,float const*,double,int) ; 
 int /*<<< orphan*/  FUNC21 (double*,double const*,double,int) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC23(AVFilterLink *inlink, AVFrame *buf)
{
    AVFilterContext *ctx = inlink->dst;
    VolumeContext *vol    = inlink->dst->priv;
    AVFilterLink *outlink = inlink->dst->outputs[0];
    int nb_samples        = buf->nb_samples;
    AVFrame *out_buf;
    int64_t pos;
    AVFrameSideData *sd = FUNC7(buf, AV_FRAME_DATA_REPLAYGAIN);
    int ret;

    if (sd && vol->replaygain != REPLAYGAIN_IGNORE) {
        if (vol->replaygain != REPLAYGAIN_DROP) {
            AVReplayGain *replaygain = (AVReplayGain*)sd->data;
            int32_t gain  = 100000;
            uint32_t peak = 100000;
            float g, p;

            if (vol->replaygain == REPLAYGAIN_TRACK &&
                replaygain->track_gain != INT32_MIN) {
                gain = replaygain->track_gain;

                if (replaygain->track_peak != 0)
                    peak = replaygain->track_peak;
            } else if (replaygain->album_gain != INT32_MIN) {
                gain = replaygain->album_gain;

                if (replaygain->album_peak != 0)
                    peak = replaygain->album_peak;
            } else {
                FUNC11(inlink->dst, AV_LOG_WARNING, "Both ReplayGain gain "
                       "values are unknown.\n");
            }
            g = gain / 100000.0f;
            p = peak / 100000.0f;

            FUNC11(inlink->dst, AV_LOG_VERBOSE,
                   "Using gain %f dB from replaygain side data.\n", g);

            vol->volume   = FUNC14((g + vol->replaygain_preamp) / 20);
            if (vol->replaygain_noclip)
                vol->volume = FUNC2(vol->volume, 1.0 / p);
            vol->volume_i = (int)(vol->volume * 256 + 0.5);

            FUNC22(vol);
        }
        FUNC9(buf, AV_FRAME_DATA_REPLAYGAIN);
    }

    if (FUNC17(vol->var_values[VAR_STARTPTS])) {
        vol->var_values[VAR_STARTPTS] = FUNC3(buf->pts);
        vol->var_values[VAR_STARTT  ] = FUNC4(buf->pts, inlink->time_base);
    }
    vol->var_values[VAR_PTS] = FUNC3(buf->pts);
    vol->var_values[VAR_T  ] = FUNC4(buf->pts, inlink->time_base);
    vol->var_values[VAR_N  ] = inlink->frame_count_out;

    pos = buf->pkt_pos;
    vol->var_values[VAR_POS] = pos == -1 ? NAN : pos;
    if (vol->eval_mode == EVAL_MODE_FRAME)
        FUNC18(ctx);

    if (vol->volume == 1.0 || vol->volume_i == 256) {
        out_buf = buf;
        goto end;
    }

    /* do volume scaling in-place if input buffer is writable */
    if (FUNC8(buf)
            && (vol->precision != PRECISION_FIXED || vol->volume_i > 0)) {
        out_buf = buf;
    } else {
        out_buf = FUNC16(outlink, nb_samples);
        if (!out_buf) {
            FUNC6(&buf);
            return FUNC0(ENOMEM);
        }
        ret = FUNC5(out_buf, buf);
        if (ret < 0) {
            FUNC6(&out_buf);
            FUNC6(&buf);
            return ret;
        }
    }

    if (vol->precision != PRECISION_FIXED || vol->volume_i > 0) {
        int p, plane_samples;

        if (FUNC12(buf->format))
            plane_samples = FUNC1(nb_samples, vol->samples_align);
        else
            plane_samples = FUNC1(nb_samples * vol->channels, vol->samples_align);

        if (vol->precision == PRECISION_FIXED) {
            for (p = 0; p < vol->planes; p++) {
                vol->scale_samples(out_buf->extended_data[p],
                                   buf->extended_data[p], plane_samples,
                                   vol->volume_i);
            }
        } else if (FUNC10(vol->sample_fmt) == AV_SAMPLE_FMT_FLT) {
            for (p = 0; p < vol->planes; p++) {
                vol->fdsp->vector_fmul_scalar((float *)out_buf->extended_data[p],
                                             (const float *)buf->extended_data[p],
                                             vol->volume, plane_samples);
            }
        } else {
            for (p = 0; p < vol->planes; p++) {
                vol->fdsp->vector_dmul_scalar((double *)out_buf->extended_data[p],
                                             (const double *)buf->extended_data[p],
                                             vol->volume, plane_samples);
            }
        }
    }

    FUNC13();

    if (buf != out_buf)
        FUNC6(&buf);

end:
    vol->var_values[VAR_NB_CONSUMED_SAMPLES] += out_buf->nb_samples;
    return FUNC15(outlink, out_buf);
}