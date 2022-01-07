
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {int h; int frame_count_in; } ;
struct TYPE_7__ {int w; float minamp; float** avg_data; int ascale; int cmode; int nb_channels; int avg; int mode; } ;
typedef TYPE_1__ ShowFreqsContext ;
typedef int AVFrame ;
typedef TYPE_2__ AVFilterLink ;
 int FFMIN (float const,int) ;


 int av_assert0 (int ) ;
 float const av_clipd (double,float const,int) ;
 int cbrt (double) ;
 int draw_dot (int *,int const,int,int *) ;
 float get_bsize (TYPE_1__*,int) ;
 int get_sx (TYPE_1__*,int) ;
 double log (float const) ;
 int sqrt (double) ;

__attribute__((used)) static inline void plot_freq(ShowFreqsContext *s, int ch,
                             double a, int f, uint8_t fg[4], int *prev_y,
                             AVFrame *out, AVFilterLink *outlink)
{
    const int w = s->w;
    const float min = s->minamp;
    const float avg = s->avg_data[ch][f];
    const float bsize = get_bsize(s, f);
    const int sx = get_sx(s, f);
    int end = outlink->h;
    int x, y, i;

    switch(s->ascale) {
    case 133:
        a = 1.0 - sqrt(a);
        break;
    case 136:
        a = 1.0 - cbrt(a);
        break;
    case 134:
        a = log(av_clipd(a, min, 1)) / log(min);
        break;
    case 135:
        a = 1.0 - a;
        break;
    }

    switch (s->cmode) {
    case 131:
        y = a * outlink->h - 1;
        break;
    case 128:
        end = (outlink->h / s->nb_channels) * (ch + 1);
        y = (outlink->h / s->nb_channels) * ch + a * (outlink->h / s->nb_channels) - 1;
        break;
    default:
        av_assert0(0);
    }
    if (y < 0)
        return;

    switch (s->avg) {
    case 0:
        y = s->avg_data[ch][f] = !outlink->frame_count_in ? y : FFMIN(avg, y);
        break;
    case 1:
        break;
    default:
        s->avg_data[ch][f] = avg + y * (y - avg) / (FFMIN(outlink->frame_count_in + 1, s->avg) * y);
        y = s->avg_data[ch][f];
        break;
    }

    switch(s->mode) {
    case 129:
        if (*prev_y == -1) {
            *prev_y = y;
        }
        if (y <= *prev_y) {
            for (x = sx + 1; x < sx + bsize && x < w; x++)
                draw_dot(out, x, y, fg);
            for (i = y; i <= *prev_y; i++)
                draw_dot(out, sx, i, fg);
        } else {
            for (i = *prev_y; i <= y; i++)
                draw_dot(out, sx, i, fg);
            for (x = sx + 1; x < sx + bsize && x < w; x++)
                draw_dot(out, x, i - 1, fg);
        }
        *prev_y = y;
        break;
    case 132:
        for (x = sx; x < sx + bsize && x < w; x++)
            for (i = y; i < end; i++)
                draw_dot(out, x, i, fg);
        break;
    case 130:
        for (x = sx; x < sx + bsize && x < w; x++)
            draw_dot(out, x, y, fg);
        break;
    }
}
