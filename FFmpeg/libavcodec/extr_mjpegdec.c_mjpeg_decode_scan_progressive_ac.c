
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_6__ {int* comp_index; size_t* quant_sindex; unsigned long long* coefs_finished; int mb_height; int* block_stride; int mb_width; int avctx; int * ac_index; scalar_t__ restart_interval; scalar_t__ restart_count; int gb; int ** last_nnz; int ** blocks; int ** quant_matrixes; } ;
typedef TYPE_1__ MJpegDecodeContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int av_assert0 (int) ;
 int av_log (int ,int ,char*,...) ;
 int * block ;
 int decode_block_progressive (TYPE_1__*,int ,int *,int ,int *,int,int,int,int*) ;
 int decode_block_refinement (TYPE_1__*,int ,int *,int ,int *,int,int,int,int*) ;
 scalar_t__ get_bits_left (int *) ;
 scalar_t__ handle_rstn (TYPE_1__*,int ) ;
 int ** int16_t (int ) ;

__attribute__((used)) static int mjpeg_decode_scan_progressive_ac(MJpegDecodeContext *s, int ss,
                                            int se, int Ah, int Al)
{
    int mb_x, mb_y;
    int EOBRUN = 0;
    int c = s->comp_index[0];
    uint16_t *quant_matrix = s->quant_matrixes[s->quant_sindex[0]];

    av_assert0(ss>=0 && Ah>=0 && Al>=0);
    if (se < ss || se > 63) {
        av_log(s->avctx, AV_LOG_ERROR, "SS/SE %d/%d is invalid\n", ss, se);
        return AVERROR_INVALIDDATA;
    }



    s->coefs_finished[c] |= (2ULL << se) - (1ULL << ss);

    s->restart_count = 0;

    for (mb_y = 0; mb_y < s->mb_height; mb_y++) {
        int block_idx = mb_y * s->block_stride[c];
        int16_t (*block)[64] = &s->blocks[c][block_idx];
        uint8_t *last_nnz = &s->last_nnz[c][block_idx];
        if (get_bits_left(&s->gb) <= 0) {
            av_log(s->avctx, AV_LOG_ERROR, "bitstream truncated in mjpeg_decode_scan_progressive_ac\n");
            return AVERROR_INVALIDDATA;
        }
        for (mb_x = 0; mb_x < s->mb_width; mb_x++, block++, last_nnz++) {
                int ret;
                if (s->restart_interval && !s->restart_count)
                    s->restart_count = s->restart_interval;

                if (Ah)
                    ret = decode_block_refinement(s, *block, last_nnz, s->ac_index[0],
                                                  quant_matrix, ss, se, Al, &EOBRUN);
                else
                    ret = decode_block_progressive(s, *block, last_nnz, s->ac_index[0],
                                                   quant_matrix, ss, se, Al, &EOBRUN);
                if (ret < 0) {
                    av_log(s->avctx, AV_LOG_ERROR,
                           "error y=%d x=%d\n", mb_y, mb_x);
                    return AVERROR_INVALIDDATA;
                }

            if (handle_rstn(s, 0))
                EOBRUN = 0;
        }
    }
    return 0;
}
