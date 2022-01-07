
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_6__ {TYPE_2__* out; TYPE_2__* in; } ;
typedef TYPE_1__ ThreadData ;
struct TYPE_8__ {int * priv; } ;
struct TYPE_7__ {int width; int height; int* linesize; scalar_t__* data; } ;
typedef int SignalstatsContext ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVFilterContext ;


 int FILTER3 (int) ;
 int burn_frame16 (int const*,TYPE_2__*,int,int) ;

__attribute__((used)) static int filter16_tout(AVFilterContext *ctx, void *arg, int jobnr, int nb_jobs)
{
    ThreadData *td = arg;
    const SignalstatsContext *s = ctx->priv;
    const AVFrame *in = td->in;
    AVFrame *out = td->out;
    const int w = in->width;
    const int h = in->height;
    const int slice_start = (h * jobnr ) / nb_jobs;
    const int slice_end = (h * (jobnr+1)) / nb_jobs;
    const uint16_t *p = (uint16_t *)in->data[0];
    int lw = in->linesize[0] / 2;
    int x, y, score = 0, filt;

    for (y = slice_start; y < slice_end; y++) {

        if (y - 1 < 0 || y + 1 >= h)
            continue;




        if (y - 2 >= 0 && y + 2 < h) {
            for (x = 1; x < w - 1; x++) {
                filt = FILTER3(2) && FILTER3(1);
                score += filt;
                if (filt && out)
                    burn_frame16(s, out, x, y);
            }
        } else {
            for (x = 1; x < w - 1; x++) {
                filt = FILTER3(1);
                score += filt;
                if (filt && out)
                    burn_frame16(s, out, x, y);
            }
        }
    }
    return score;
}
