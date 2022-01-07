
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_14__ {int prefix_bytes; int wavelet_depth; int size_scaler; TYPE_1__* plane; scalar_t__** quant; } ;
typedef TYPE_2__ VC2EncContext ;
struct TYPE_16__ {int* buf; } ;
struct TYPE_15__ {int x; int y; int quant_idx; int bytes; TYPE_4__ pb; TYPE_2__* ctx; } ;
struct TYPE_13__ {int ** band; } ;
typedef TYPE_3__ SliceArgs ;
typedef TYPE_4__ PutBitContext ;
typedef int AVCodecContext ;


 int FFALIGN (int,int) ;
 int FFMAX (scalar_t__,int ) ;
 int MAX_DWT_LEVELS ;
 int avpriv_align_put_bits (TYPE_4__*) ;
 int encode_subband (TYPE_2__*,TYPE_4__*,int const,int const,int *,int ) ;
 int flush_put_bits (TYPE_4__*) ;
 int memset (int ,int,int) ;
 int put_bits (TYPE_4__*,int,int const) ;
 int put_bits_count (TYPE_4__*) ;
 int put_bits_ptr (TYPE_4__*) ;
 int skip_put_bytes (TYPE_4__*,int) ;

__attribute__((used)) static int encode_hq_slice(AVCodecContext *avctx, void *arg)
{
    SliceArgs *slice_dat = arg;
    VC2EncContext *s = slice_dat->ctx;
    PutBitContext *pb = &slice_dat->pb;
    const int slice_x = slice_dat->x;
    const int slice_y = slice_dat->y;
    const int quant_idx = slice_dat->quant_idx;
    const int slice_bytes_max = slice_dat->bytes;
    uint8_t quants[MAX_DWT_LEVELS][4];
    int p, level, orientation;


    memset(put_bits_ptr(pb), 0, s->prefix_bytes);
    skip_put_bytes(pb, s->prefix_bytes);

    put_bits(pb, 8, quant_idx);


    for (level = 0; level < s->wavelet_depth; level++)
        for (orientation = !!level; orientation < 4; orientation++)
            quants[level][orientation] = FFMAX(quant_idx - s->quant[level][orientation], 0);


    for (p = 0; p < 3; p++) {
        int bytes_start, bytes_len, pad_s, pad_c;
        bytes_start = put_bits_count(pb) >> 3;
        put_bits(pb, 8, 0);
        for (level = 0; level < s->wavelet_depth; level++) {
            for (orientation = !!level; orientation < 4; orientation++) {
                encode_subband(s, pb, slice_x, slice_y,
                               &s->plane[p].band[level][orientation],
                               quants[level][orientation]);
            }
        }
        avpriv_align_put_bits(pb);
        bytes_len = (put_bits_count(pb) >> 3) - bytes_start - 1;
        if (p == 2) {
            int len_diff = slice_bytes_max - (put_bits_count(pb) >> 3);
            pad_s = FFALIGN((bytes_len + len_diff), s->size_scaler)/s->size_scaler;
            pad_c = (pad_s*s->size_scaler) - bytes_len;
        } else {
            pad_s = FFALIGN(bytes_len, s->size_scaler)/s->size_scaler;
            pad_c = (pad_s*s->size_scaler) - bytes_len;
        }
        pb->buf[bytes_start] = pad_s;
        flush_put_bits(pb);

        memset(put_bits_ptr(pb), 0xFF, pad_c);
        skip_put_bytes(pb, pad_c);
    }

    return 0;
}
