
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__** inputs; TYPE_1__* priv; } ;
struct TYPE_8__ {int format; } ;
struct TYPE_7__ {int channels; int orientation; } ;
typedef TYPE_1__ SpectrumSynthContext ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;
 int read16_fft_bin (TYPE_1__*,int,int,int,int) ;
 int read8_fft_bin (TYPE_1__*,int,int,int,int) ;

__attribute__((used)) static void read_fft_data(AVFilterContext *ctx, int x, int h, int ch)
{
    SpectrumSynthContext *s = ctx->priv;
    AVFilterLink *inlink = ctx->inputs[0];
    int start = h * (s->channels - ch) - 1;
    int end = h * (s->channels - ch - 1);
    int y, f;

    switch (s->orientation) {
    case 128:
        switch (inlink->format) {
        case 131:
        case 134:
            for (y = start, f = 0; y >= end; y--, f++) {
                read16_fft_bin(s, x, y, f, ch);
            }
            break;
        case 130:
        case 132:
        case 133:
            for (y = start, f = 0; y >= end; y--, f++) {
                read8_fft_bin(s, x, y, f, ch);
            }
            break;
        }
        break;
    case 129:
        switch (inlink->format) {
        case 131:
        case 134:
            for (y = end, f = 0; y <= start; y++, f++) {
                read16_fft_bin(s, y, x, f, ch);
            }
            break;
        case 130:
        case 132:
        case 133:
            for (y = end, f = 0; y <= start; y++, f++) {
                read8_fft_bin(s, y, x, f, ch);
            }
            break;
        }
        break;
    }
}
