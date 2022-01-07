
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* status; } ;
struct TYPE_8__ {int channels; TYPE_2__* codec; int extradata; int block_align; int bits_per_coded_sample; TYPE_4__* priv_data; } ;
struct TYPE_7__ {int id; } ;
struct TYPE_6__ {int step_index; } ;
typedef int GetByteContext ;
typedef TYPE_3__ AVCodecContext ;
typedef TYPE_4__ ADPCMDecodeContext ;


 int AVERROR_INVALIDDATA ;
 int FFMIN (int,int ) ;
 int bytestream2_get_be32 (int *) ;
 int bytestream2_get_byte (int *) ;
 int bytestream2_get_le32 (int *) ;
 int bytestream2_skip (int *,int) ;
 int* ff_adpcm_ima_block_samples ;
 int* ff_adpcm_ima_block_sizes ;

__attribute__((used)) static int get_nb_samples(AVCodecContext *avctx, GetByteContext *gb,
                          int buf_size, int *coded_samples, int *approx_nb_samples)
{
    ADPCMDecodeContext *s = avctx->priv_data;
    int nb_samples = 0;
    int ch = avctx->channels;
    int has_coded_samples = 0;
    int header_size;

    *coded_samples = 0;
    *approx_nb_samples = 0;

    if(ch <= 0)
        return 0;

    switch (avctx->codec->id) {

    case 153:
        if (buf_size < 76 * ch)
            return 0;
        nb_samples = 128;
        break;
    case 143:
        if (buf_size < 34 * ch)
            return 0;
        nb_samples = 64;
        break;

    case 160:
    case 151:
    case 146:
    case 144:
    case 139:
    case 128:
    case 161:
        nb_samples = buf_size * 2 / ch;
        break;
    }
    if (nb_samples)
        return nb_samples;


    header_size = 0;
    switch (avctx->codec->id) {
        case 164:
        case 162:
        case 150:
        case 145: header_size = 4 * ch; break;
        case 152: header_size = 8; break;
        case 141: header_size = 4 * ch; break;
    }
    if (header_size > 0)
        return (buf_size - header_size) * 2 / ch;


    switch (avctx->codec->id) {
    case 158:
        has_coded_samples = 1;
        *coded_samples = bytestream2_get_le32(gb);
        *coded_samples -= *coded_samples % 28;
        nb_samples = (buf_size - 12) / 30 * 28;
        break;
    case 147:
        has_coded_samples = 1;
        *coded_samples = bytestream2_get_le32(gb);
        nb_samples = (buf_size - (4 + 8 * ch)) * 2 / ch;
        break;
    case 157:
        nb_samples = (buf_size - ch) / ch * 2;
        break;
    case 156:
    case 155:
    case 154:


        has_coded_samples = 1;
        switch (avctx->codec->id) {
        case 156:
            header_size = 4 + 9 * ch;
            *coded_samples = bytestream2_get_le32(gb);
            break;
        case 155:
            header_size = 4 + 5 * ch;
            *coded_samples = bytestream2_get_le32(gb);
            break;
        case 154:
            header_size = 4 + 5 * ch;
            *coded_samples = bytestream2_get_be32(gb);
            break;
        }
        *coded_samples -= *coded_samples % 28;
        nb_samples = (buf_size - header_size) * 2 / ch;
        nb_samples -= nb_samples % 28;
        *approx_nb_samples = 1;
        break;
    case 149:
        if (avctx->block_align > 0)
            buf_size = FFMIN(buf_size, avctx->block_align);
        nb_samples = ((buf_size - 16) * 2 / 3 * 4) / ch;
        break;
    case 148:
        if (avctx->block_align > 0)
            buf_size = FFMIN(buf_size, avctx->block_align);
        if (buf_size < 4 * ch)
            return AVERROR_INVALIDDATA;
        nb_samples = 1 + (buf_size - 4 * ch) * 2 / ch;
        break;
    case 142:
        if (avctx->block_align > 0)
            buf_size = FFMIN(buf_size, avctx->block_align);
        nb_samples = (buf_size - 4 * ch) * 2 / ch;
        break;
    case 140:
    {
        int bsize = ff_adpcm_ima_block_sizes[avctx->bits_per_coded_sample - 2];
        int bsamples = ff_adpcm_ima_block_samples[avctx->bits_per_coded_sample - 2];
        if (avctx->block_align > 0)
            buf_size = FFMIN(buf_size, avctx->block_align);
        if (buf_size < 4 * ch)
            return AVERROR_INVALIDDATA;
        nb_samples = 1 + (buf_size - 4 * ch) / (bsize * ch) * bsamples;
        break;
    }
    case 138:
        if (avctx->block_align > 0)
            buf_size = FFMIN(buf_size, avctx->block_align);
        nb_samples = (buf_size - 6 * ch) * 2 / ch;
        break;
    case 137:
        if (avctx->block_align > 0)
            buf_size = FFMIN(buf_size, avctx->block_align);
        nb_samples = (buf_size - 16 * (ch / 2)) * 2 / ch;
        break;
    case 135:
    case 134:
    case 133:
    {
        int samples_per_byte;
        switch (avctx->codec->id) {
        case 135: samples_per_byte = 4; break;
        case 134: samples_per_byte = 3; break;
        case 133: samples_per_byte = 2; break;
        }
        if (!s->status[0].step_index) {
            if (buf_size < ch)
                return AVERROR_INVALIDDATA;
            nb_samples++;
            buf_size -= ch;
        }
        nb_samples += buf_size * samples_per_byte / ch;
        break;
    }
    case 132:
    {
        int buf_bits = buf_size * 8 - 2;
        int nbits = (bytestream2_get_byte(gb) >> 6) + 2;
        int block_hdr_size = 22 * ch;
        int block_size = block_hdr_size + nbits * ch * 4095;
        int nblocks = buf_bits / block_size;
        int bits_left = buf_bits - nblocks * block_size;
        nb_samples = nblocks * 4096;
        if (bits_left >= block_hdr_size)
            nb_samples += 1 + (bits_left - block_hdr_size) / (nbits * ch);
        break;
    }
    case 131:
    case 130:
        if (avctx->extradata) {
            nb_samples = buf_size * 14 / (8 * ch);
            break;
        }
        has_coded_samples = 1;
        bytestream2_skip(gb, 4);
        *coded_samples = (avctx->codec->id == 130) ?
                          bytestream2_get_le32(gb) :
                          bytestream2_get_be32(gb);
        buf_size -= 8 + 36 * ch;
        buf_size /= ch;
        nb_samples = buf_size / 8 * 14;
        if (buf_size % 8 > 1)
            nb_samples += (buf_size % 8 - 1) * 2;
        *approx_nb_samples = 1;
        break;
    case 163:
        nb_samples = buf_size / (9 * ch) * 16;
        break;
    case 129:
        nb_samples = (buf_size / 128) * 224 / ch;
        break;
    case 159:
    case 136:
        nb_samples = buf_size / (16 * ch) * 28;
        break;
    }


    if (has_coded_samples && (*coded_samples <= 0 || *coded_samples > nb_samples))
        return AVERROR_INVALIDDATA;

    return nb_samples;
}
