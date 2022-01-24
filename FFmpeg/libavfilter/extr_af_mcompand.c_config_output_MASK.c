#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {double curve_dB; int nb_segments; double gain_dB; void* segments; } ;
struct TYPE_15__ {TYPE_2__* priv; } ;
struct TYPE_14__ {int channels; double sample_rate; TYPE_4__* src; } ;
struct TYPE_13__ {char* args; int nb_bands; int delay_buf_size; TYPE_1__* bands; } ;
struct TYPE_12__ {double* attack_rate; double* decay_rate; double* volume; double topfreq; double delay; int /*<<< orphan*/  delay_buf; TYPE_6__ transfer_fn; int /*<<< orphan*/  filter; } ;
typedef  TYPE_2__ MCompandContext ;
typedef  int /*<<< orphan*/  CompandSegment ;
typedef  TYPE_3__ AVFilterLink ;
typedef  TYPE_4__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 void* FUNC1 (int,int) ; 
 int FUNC2 (int,int) ; 
 double M_LN10 ; 
 void* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC5 (char*,char*,char**) ; 
 int /*<<< orphan*/  FUNC6 (char*,int*,char) ; 
 int FUNC7 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 double FUNC8 (double) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int) ; 
 int FUNC10 (char*,int,double,TYPE_6__*,TYPE_4__*) ; 
 double FUNC11 (double,double) ; 
 int FUNC12 (char*,char*,double*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*) ; 

__attribute__((used)) static int FUNC14(AVFilterLink *outlink)
{
    AVFilterContext *ctx  = outlink->src;
    MCompandContext *s    = ctx->priv;
    int ret, ch, i, k, new_nb_items, nb_bands;
    char *p = s->args, *saveptr = NULL;
    int max_delay_size = 0;

    FUNC6(s->args, &nb_bands, '|');
    s->nb_bands = FUNC1(1, nb_bands);

    s->bands = FUNC3(nb_bands, sizeof(*s->bands));
    if (!s->bands)
        return FUNC0(ENOMEM);

    for (i = 0, new_nb_items = 0; i < nb_bands; i++) {
        int nb_points, nb_attacks, nb_items = 0;
        char *tstr2, *tstr = FUNC5(p, "|", &saveptr);
        char *p2, *p3, *saveptr2 = NULL, *saveptr3 = NULL;
        double radius;

        if (!tstr) {
            FUNC13(ctx);
            return FUNC0(EINVAL);
        }
        p = NULL;

        p2 = tstr;
        FUNC6(tstr, &nb_items, ' ');
        tstr2 = FUNC5(p2, " ", &saveptr2);
        if (!tstr2) {
            FUNC4(ctx, AV_LOG_ERROR, "at least one attacks/decays rate is mandatory\n");
            FUNC13(ctx);
            return FUNC0(EINVAL);
        }
        p2 = NULL;
        p3 = tstr2;

        FUNC6(tstr2, &nb_attacks, ',');
        if (!nb_attacks || nb_attacks & 1) {
            FUNC4(ctx, AV_LOG_ERROR, "number of attacks rate plus decays rate must be even\n");
            FUNC13(ctx);
            return FUNC0(EINVAL);
        }

        s->bands[i].attack_rate = FUNC3(outlink->channels, sizeof(double));
        s->bands[i].decay_rate = FUNC3(outlink->channels, sizeof(double));
        s->bands[i].volume = FUNC3(outlink->channels, sizeof(double));
        for (k = 0; k < FUNC2(nb_attacks / 2, outlink->channels); k++) {
            char *tstr3 = FUNC5(p3, ",", &saveptr3);

            p3 = NULL;
            FUNC12(tstr3, "%lf", &s->bands[i].attack_rate[k]);
            tstr3 = FUNC5(p3, ",", &saveptr3);
            FUNC12(tstr3, "%lf", &s->bands[i].decay_rate[k]);

            if (s->bands[i].attack_rate[k] > 1.0 / outlink->sample_rate) {
                s->bands[i].attack_rate[k] = 1.0 - FUNC8(-1.0 / (outlink->sample_rate * s->bands[i].attack_rate[k]));
            } else {
                s->bands[i].attack_rate[k] = 1.0;
            }

            if (s->bands[i].decay_rate[k] > 1.0 / outlink->sample_rate) {
                s->bands[i].decay_rate[k] = 1.0 - FUNC8(-1.0 / (outlink->sample_rate * s->bands[i].decay_rate[k]));
            } else {
                s->bands[i].decay_rate[k] = 1.0;
            }
        }

        for (ch = k; ch < outlink->channels; ch++) {
            s->bands[i].attack_rate[ch] = s->bands[i].attack_rate[k - 1];
            s->bands[i].decay_rate[ch]  = s->bands[i].decay_rate[k - 1];
        }

        tstr2 = FUNC5(p2, " ", &saveptr2);
        if (!tstr2) {
            FUNC4(ctx, AV_LOG_ERROR, "transfer function curve in dB must be set\n");
            FUNC13(ctx);
            return FUNC0(EINVAL);
        }
        FUNC12(tstr2, "%lf", &s->bands[i].transfer_fn.curve_dB);

        radius = s->bands[i].transfer_fn.curve_dB * M_LN10 / 20.0;

        tstr2 = FUNC5(p2, " ", &saveptr2);
        if (!tstr2) {
            FUNC4(ctx, AV_LOG_ERROR, "transfer points missing\n");
            FUNC13(ctx);
            return FUNC0(EINVAL);
        }

        FUNC6(tstr2, &nb_points, ',');
        s->bands[i].transfer_fn.nb_segments = (nb_points + 4) * 2;
        s->bands[i].transfer_fn.segments = FUNC3(s->bands[i].transfer_fn.nb_segments,
                                                     sizeof(CompandSegment));
        if (!s->bands[i].transfer_fn.segments) {
            FUNC13(ctx);
            return FUNC0(ENOMEM);
        }

        ret = FUNC10(tstr2, nb_points, radius, &s->bands[i].transfer_fn, ctx);
        if (ret < 0) {
            FUNC4(ctx, AV_LOG_ERROR, "transfer points parsing failed\n");
            FUNC13(ctx);
            return ret;
        }

        tstr2 = FUNC5(p2, " ", &saveptr2);
        if (!tstr2) {
            FUNC4(ctx, AV_LOG_ERROR, "crossover_frequency is missing\n");
            FUNC13(ctx);
            return FUNC0(EINVAL);
        }

        new_nb_items += FUNC12(tstr2, "%lf", &s->bands[i].topfreq) == 1;
        if (s->bands[i].topfreq < 0 || s->bands[i].topfreq >= outlink->sample_rate / 2) {
            FUNC4(ctx, AV_LOG_ERROR, "crossover_frequency: %f, should be >=0 and lower than half of sample rate: %d.\n", s->bands[i].topfreq, outlink->sample_rate / 2);
            FUNC13(ctx);
            return FUNC0(EINVAL);
        }

        if (s->bands[i].topfreq != 0) {
            ret = FUNC7(outlink, &s->bands[i].filter, s->bands[i].topfreq);
            if (ret < 0) {
                FUNC13(ctx);
                return ret;
            }
        }

        tstr2 = FUNC5(p2, " ", &saveptr2);
        if (tstr2) {
            FUNC12(tstr2, "%lf", &s->bands[i].delay);
            max_delay_size = FUNC1(max_delay_size, s->bands[i].delay * outlink->sample_rate);

            tstr2 = FUNC5(p2, " ", &saveptr2);
            if (tstr2) {
                double initial_volume;

                FUNC12(tstr2, "%lf", &initial_volume);
                initial_volume = FUNC11(10.0, initial_volume / 20);

                for (k = 0; k < outlink->channels; k++) {
                    s->bands[i].volume[k] = initial_volume;
                }

                tstr2 = FUNC5(p2, " ", &saveptr2);
                if (tstr2) {
                    FUNC12(tstr2, "%lf", &s->bands[i].transfer_fn.gain_dB);
                }
            }
        }
    }
    s->nb_bands = new_nb_items;

    for (i = 0; max_delay_size > 0 && i < s->nb_bands; i++) {
        s->bands[i].delay_buf = FUNC9(outlink, max_delay_size);
        if (!s->bands[i].delay_buf)
            return FUNC0(ENOMEM);
    }
    s->delay_buf_size = max_delay_size;

    return 0;
}