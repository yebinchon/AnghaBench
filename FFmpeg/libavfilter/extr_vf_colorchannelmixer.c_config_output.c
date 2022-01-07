
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {TYPE_2__* priv; } ;
struct TYPE_11__ {int format; TYPE_5__* src; } ;
struct TYPE_10__ {TYPE_1__* comp; } ;
struct TYPE_9__ {int* buffer; int*** lut; int rr; int rg; int rb; int ra; int gr; int gg; int gb; int ga; int br; int bg; int bb; int ba; int ar; int ag; int ab; int aa; int filter_slice; int rgba_map; } ;
struct TYPE_8__ {int depth; } ;
typedef TYPE_2__ ColorChannelMixerContext ;
typedef TYPE_3__ AVPixFmtDescriptor ;
typedef TYPE_4__ AVFilterLink ;
typedef TYPE_5__ AVFilterContext ;


 size_t A ;
 int AVERROR (int ) ;
 size_t B ;
 int ENOMEM ;
 size_t G ;
 size_t R ;
 int* av_malloc (int) ;
 TYPE_3__* av_pix_fmt_desc_get (int ) ;
 int ff_fill_rgba_map (int ,int ) ;
 int filter_slice_gbrap ;
 int filter_slice_gbrap10 ;
 int filter_slice_gbrap12 ;
 int filter_slice_gbrap16 ;
 int filter_slice_gbrp ;
 int filter_slice_gbrp10 ;
 int filter_slice_gbrp12 ;
 int filter_slice_gbrp14 ;
 int filter_slice_gbrp16 ;
 int filter_slice_gbrp9 ;
 int filter_slice_rgb0 ;
 int filter_slice_rgb24 ;
 int filter_slice_rgb48 ;
 int filter_slice_rgba ;
 int filter_slice_rgba64 ;
 void* lrint (int) ;

__attribute__((used)) static int config_output(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    ColorChannelMixerContext *s = ctx->priv;
    const AVPixFmtDescriptor *desc = av_pix_fmt_desc_get(outlink->format);
    const int depth = desc->comp[0].depth;
    int i, j, size, *buffer = s->buffer;

    ff_fill_rgba_map(s->rgba_map, outlink->format);

    size = 1 << depth;
    if (!s->buffer) {
        s->buffer = buffer = av_malloc(16 * size * sizeof(*s->buffer));
        if (!s->buffer)
            return AVERROR(ENOMEM);

        for (i = 0; i < 4; i++)
            for (j = 0; j < 4; j++, buffer += size)
                s->lut[i][j] = buffer;
    }

    for (i = 0; i < size; i++) {
        s->lut[R][R][i] = lrint(i * s->rr);
        s->lut[R][G][i] = lrint(i * s->rg);
        s->lut[R][B][i] = lrint(i * s->rb);
        s->lut[R][A][i] = lrint(i * s->ra);

        s->lut[G][R][i] = lrint(i * s->gr);
        s->lut[G][G][i] = lrint(i * s->gg);
        s->lut[G][B][i] = lrint(i * s->gb);
        s->lut[G][A][i] = lrint(i * s->ga);

        s->lut[B][R][i] = lrint(i * s->br);
        s->lut[B][G][i] = lrint(i * s->bg);
        s->lut[B][B][i] = lrint(i * s->bb);
        s->lut[B][A][i] = lrint(i * s->ba);

        s->lut[A][R][i] = lrint(i * s->ar);
        s->lut[A][G][i] = lrint(i * s->ag);
        s->lut[A][B][i] = lrint(i * s->ab);
        s->lut[A][A][i] = lrint(i * s->aa);
    }

    switch (outlink->format) {
    case 146:
    case 131:
        s->filter_slice = filter_slice_rgb24;
        break;
    case 151:
    case 150:
    case 147:
    case 132:
        s->filter_slice = filter_slice_rgb0;
        break;
    case 149:
    case 148:
    case 144:
    case 129:
        s->filter_slice = filter_slice_rgba;
        break;
    case 145:
    case 130:
        s->filter_slice = filter_slice_rgb48;
        break;
    case 143:
    case 128:
        s->filter_slice = filter_slice_rgba64;
        break;
    case 138:
        s->filter_slice = filter_slice_gbrp;
        break;
    case 142:
        s->filter_slice = filter_slice_gbrap;
        break;
    case 133:
        s->filter_slice = filter_slice_gbrp9;
        break;
    case 137:
        s->filter_slice = filter_slice_gbrp10;
        break;
    case 141:
        s->filter_slice = filter_slice_gbrap10;
        break;
    case 136:
        s->filter_slice = filter_slice_gbrp12;
        break;
    case 140:
        s->filter_slice = filter_slice_gbrap12;
        break;
    case 135:
        s->filter_slice = filter_slice_gbrp14;
        break;
    case 134:
        s->filter_slice = filter_slice_gbrp16;
        break;
    case 139:
        s->filter_slice = filter_slice_gbrap16;
        break;
    }

    return 0;
}
