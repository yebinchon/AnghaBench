
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef unsigned long long uint64_t ;
struct SOFAlizerContext {int lfe_channel; TYPE_2__* vspkrpos; scalar_t__ speakers_pos; } ;
struct TYPE_8__ {TYPE_1__** inputs; struct SOFAlizerContext* priv; } ;
struct TYPE_7__ {float azim; float elev; scalar_t__ set; } ;
struct TYPE_6__ {unsigned long long channel_layout; int channels; } ;
typedef TYPE_3__ AVFilterContext ;


 int AVERROR (int ) ;
 int EINVAL ;
 int memcpy (float*,float*,int) ;
 int parse_speaker_pos (TYPE_3__*,unsigned long long) ;

__attribute__((used)) static int get_speaker_pos(AVFilterContext *ctx,
                           float *speaker_azim, float *speaker_elev)
{
    struct SOFAlizerContext *s = ctx->priv;
    uint64_t channels_layout = ctx->inputs[0]->channel_layout;
    float azim[16] = { 0 };
    float elev[16] = { 0 };
    int m, ch, n_conv = ctx->inputs[0]->channels;

    if (n_conv > 16)
        return AVERROR(EINVAL);

    s->lfe_channel = -1;

    if (s->speakers_pos)
        parse_speaker_pos(ctx, channels_layout);


    for (m = 0, ch = 0; ch < n_conv && m < 64; m++) {
        uint64_t mask = channels_layout & (1ULL << m);

        switch (mask) {
        case 148: azim[ch] = 30; break;
        case 146: azim[ch] = 330; break;
        case 149: azim[ch] = 0; break;
        case 144:
        case 143: s->lfe_channel = ch; break;
        case 151: azim[ch] = 150; break;
        case 150: azim[ch] = 210; break;
        case 152: azim[ch] = 180; break;
        case 142: azim[ch] = 90; break;
        case 141: azim[ch] = 270; break;
        case 147: azim[ch] = 15; break;
        case 145: azim[ch] = 345; break;
        case 133: azim[ch] = 0;
                                          elev[ch] = 90; break;
        case 131: azim[ch] = 30;
                                          elev[ch] = 45; break;
        case 132: azim[ch] = 0;
                                          elev[ch] = 45; break;
        case 130: azim[ch] = 330;
                                          elev[ch] = 45; break;
        case 135: azim[ch] = 150;
                                          elev[ch] = 45; break;
        case 134: azim[ch] = 210;
                                          elev[ch] = 45; break;
        case 136: azim[ch] = 180;
                                          elev[ch] = 45; break;
        case 129: azim[ch] = 90; break;
        case 128: azim[ch] = 270; break;
        case 138: azim[ch] = 90; break;
        case 137: azim[ch] = 270; break;
        case 140: azim[ch] = 90; break;
        case 139: azim[ch] = 270; break;
        case 0: break;
        default:
            return AVERROR(EINVAL);
        }

        if (s->vspkrpos[m].set) {
            azim[ch] = s->vspkrpos[m].azim;
            elev[ch] = s->vspkrpos[m].elev;
        }

        if (mask)
            ch++;
    }

    memcpy(speaker_azim, azim, n_conv * sizeof(float));
    memcpy(speaker_elev, elev, n_conv * sizeof(float));

    return 0;

}
