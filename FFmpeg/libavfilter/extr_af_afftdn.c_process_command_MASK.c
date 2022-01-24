#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* priv; } ;
struct TYPE_5__ {int sample_noise_start; int sample_noise_end; int /*<<< orphan*/  output_mode; void* noise_floor; void* noise_reduction; } ;
typedef  TYPE_1__ AudioFFTDeNoiseContext ;
typedef  TYPE_2__ AVFilterContext ;

/* Variables and functions */
 int /*<<< orphan*/  IN_MODE ; 
 int /*<<< orphan*/  NOISE_MODE ; 
 int /*<<< orphan*/  OUT_MODE ; 
 void* FUNC0 (float,int,int) ; 
 int FUNC1 (char const*,char*,float*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 

__attribute__((used)) static int FUNC4(AVFilterContext *ctx, const char *cmd, const char *args,
                           char *res, int res_len, int flags)
{
    AudioFFTDeNoiseContext *s = ctx->priv;
    int need_reset = 0;

    if (!FUNC3(cmd, "sample_noise") ||
        !FUNC3(cmd, "sn")) {
        if (!FUNC3(args, "start")) {
            s->sample_noise_start = 1;
            s->sample_noise_end = 0;
        } else if (!FUNC3(args, "end") ||
                   !FUNC3(args, "stop")) {
            s->sample_noise_start = 0;
            s->sample_noise_end = 1;
        }
    } else if (!FUNC3(cmd, "nr") ||
               !FUNC3(cmd, "noise_reduction")) {
        float nr;

        if (FUNC1(args, "%f", &nr) == 1) {
            s->noise_reduction = FUNC0(nr, 0.01, 97);
            need_reset = 1;
        }
    } else if (!FUNC3(cmd, "nf") ||
               !FUNC3(cmd, "noise_floor")) {
        float nf;

        if (FUNC1(args, "%f", &nf) == 1) {
            s->noise_floor = FUNC0(nf, -80, -20);
            need_reset = 1;
        }
    } else if (!FUNC3(cmd, "output_mode") ||
               !FUNC3(cmd, "om")) {
        if (!FUNC3(args, "i")) {
            s->output_mode = IN_MODE;
        } else if (!FUNC3(args, "o")) {
            s->output_mode = OUT_MODE;
        } else if (!FUNC3(args, "n")) {
            s->output_mode = NOISE_MODE;
        }
    }

    if (need_reset)
        FUNC2(s);

    return 0;
}