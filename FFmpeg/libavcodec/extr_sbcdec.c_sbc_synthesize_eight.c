
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sbc_frame {unsigned int*** sb_sample; } ;
struct sbc_decoder_state {int** V; int** offset; } ;
typedef int int32_t ;
struct TYPE_3__ {int ** data; } ;
typedef TYPE_1__ AVFrame ;


 int AV_WN16A (int *,int ) ;
 int av_clip_int16 (int) ;
 unsigned int* ff_sbc_proto_8_80m0 ;
 unsigned int* ff_sbc_proto_8_80m1 ;
 scalar_t__** ff_synmatrix8 ;
 int memcpy (int*,int*,int) ;

__attribute__((used)) static inline void sbc_synthesize_eight(struct sbc_decoder_state *state,
                                        struct sbc_frame *frame,
                                        int ch, int blk, AVFrame *output_frame)
{
    int i, k, idx;
    int32_t *v = state->V[ch];
    int *offset = state->offset[ch];

    for (i = 0; i < 16; i++) {

        offset[i]--;
        if (offset[i] < 0) {
            offset[i] = 159;
            memcpy(v + 160, v, 9 * sizeof(*v));
        }


        v[offset[i]] =
             (int)( (unsigned)ff_synmatrix8[i][0] * frame->sb_sample[blk][ch][0] +
                    (unsigned)ff_synmatrix8[i][1] * frame->sb_sample[blk][ch][1] +
                    (unsigned)ff_synmatrix8[i][2] * frame->sb_sample[blk][ch][2] +
                    (unsigned)ff_synmatrix8[i][3] * frame->sb_sample[blk][ch][3] +
                    (unsigned)ff_synmatrix8[i][4] * frame->sb_sample[blk][ch][4] +
                    (unsigned)ff_synmatrix8[i][5] * frame->sb_sample[blk][ch][5] +
                    (unsigned)ff_synmatrix8[i][6] * frame->sb_sample[blk][ch][6] +
                    (unsigned)ff_synmatrix8[i][7] * frame->sb_sample[blk][ch][7] ) >> 15;
    }


    for (idx = 0, i = 0; i < 8; i++, idx += 5) {
        k = (i + 8) & 0xf;


        AV_WN16A(&output_frame->data[ch][blk * 16 + i * 2], av_clip_int16(
         (int)( (unsigned)v[offset[i] + 0] * ff_sbc_proto_8_80m0[idx + 0] +
                (unsigned)v[offset[k] + 1] * ff_sbc_proto_8_80m1[idx + 0] +
                (unsigned)v[offset[i] + 2] * ff_sbc_proto_8_80m0[idx + 1] +
                (unsigned)v[offset[k] + 3] * ff_sbc_proto_8_80m1[idx + 1] +
                (unsigned)v[offset[i] + 4] * ff_sbc_proto_8_80m0[idx + 2] +
                (unsigned)v[offset[k] + 5] * ff_sbc_proto_8_80m1[idx + 2] +
                (unsigned)v[offset[i] + 6] * ff_sbc_proto_8_80m0[idx + 3] +
                (unsigned)v[offset[k] + 7] * ff_sbc_proto_8_80m1[idx + 3] +
                (unsigned)v[offset[i] + 8] * ff_sbc_proto_8_80m0[idx + 4] +
                (unsigned)v[offset[k] + 9] * ff_sbc_proto_8_80m1[idx + 4] ) >> 15));
    }
}
