
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct sbc_frame {int subbands; int channels; int blocks; scalar_t__** sb_sample_f; } ;
typedef int int16_t ;
struct TYPE_5__ {int increment; int (* sbc_analyze_8s ) (TYPE_1__*,int *,scalar_t__,scalar_t__) ;int position; int ** X; int (* sbc_analyze_4s ) (TYPE_1__*,int *,scalar_t__,scalar_t__) ;} ;
typedef TYPE_1__ SBCDSPContext ;


 int AVERROR (int ) ;
 int EIO ;
 int stub1 (TYPE_1__*,int *,scalar_t__,scalar_t__) ;
 int stub2 (TYPE_1__*,int *,scalar_t__,scalar_t__) ;

__attribute__((used)) static int sbc_analyze_audio(SBCDSPContext *s, struct sbc_frame *frame)
{
    int ch, blk;
    int16_t *x;

    switch (frame->subbands) {
    case 4:
        for (ch = 0; ch < frame->channels; ch++) {
            x = &s->X[ch][s->position - 4 *
                    s->increment + frame->blocks * 4];
            for (blk = 0; blk < frame->blocks;
                        blk += s->increment) {
                s->sbc_analyze_4s(
                    s, x,
                    frame->sb_sample_f[blk][ch],
                    frame->sb_sample_f[blk + 1][ch] -
                    frame->sb_sample_f[blk][ch]);
                x -= 4 * s->increment;
            }
        }
        return frame->blocks * 4;

    case 8:
        for (ch = 0; ch < frame->channels; ch++) {
            x = &s->X[ch][s->position - 8 *
                    s->increment + frame->blocks * 8];
            for (blk = 0; blk < frame->blocks;
                        blk += s->increment) {
                s->sbc_analyze_8s(
                    s, x,
                    frame->sb_sample_f[blk][ch],
                    frame->sb_sample_f[blk + 1][ch] -
                    frame->sb_sample_f[blk][ch]);
                x -= 8 * s->increment;
            }
        }
        return frame->blocks * 8;

    default:
        return AVERROR(EIO);
    }
}
