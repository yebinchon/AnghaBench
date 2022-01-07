
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
struct TYPE_7__ {int zrs_exp; int** zrs; int perspective_exp; void** perspective; void** pan_tilt; } ;
struct TYPE_6__ {int chroma_x_shift; int chroma_y_shift; int mv_precision; unsigned int num_refs; int weight_log2denom; int* weight; int avctx; TYPE_3__* globalmc; scalar_t__ globalmc_flag; TYPE_1__* plane; int gb; } ;
struct TYPE_5__ {int xblen; int yblen; int xbsep; int ybsep; } ;
typedef int GetBitContext ;
typedef TYPE_2__ DiracContext ;


 int AVERROR_INVALIDDATA ;
 int AVERROR_PATCHWELCOME ;
 int AV_LOG_ERROR ;
 scalar_t__ FFMAX (int,int) ;
 scalar_t__ MAX_BLOCKSIZE ;
 int align_get_bits (int *) ;
 int av_log (int ,int ,char*,...) ;
 void* dirac_get_se_golomb (int *) ;
 scalar_t__ get_bits1 (int *) ;
 int get_interleaved_ue_golomb (int *) ;
 int memset (TYPE_3__*,int ,int) ;

__attribute__((used)) static int dirac_unpack_prediction_parameters(DiracContext *s)
{
    static const uint8_t default_blen[] = { 4, 12, 16, 24 };

    GetBitContext *gb = &s->gb;
    unsigned idx, ref;

    align_get_bits(gb);


    idx = get_interleaved_ue_golomb(gb);

    if (idx > 4) {
        av_log(s->avctx, AV_LOG_ERROR, "Block prediction index too high\n");
        return AVERROR_INVALIDDATA;
    }

    if (idx == 0) {
        s->plane[0].xblen = get_interleaved_ue_golomb(gb);
        s->plane[0].yblen = get_interleaved_ue_golomb(gb);
        s->plane[0].xbsep = get_interleaved_ue_golomb(gb);
        s->plane[0].ybsep = get_interleaved_ue_golomb(gb);
    } else {

        s->plane[0].xblen = default_blen[idx-1];
        s->plane[0].yblen = default_blen[idx-1];
        s->plane[0].xbsep = 4 * idx;
        s->plane[0].ybsep = 4 * idx;
    }



    if (s->plane[0].xblen % (1 << s->chroma_x_shift) != 0 ||
        s->plane[0].yblen % (1 << s->chroma_y_shift) != 0 ||
        !s->plane[0].xblen || !s->plane[0].yblen) {
        av_log(s->avctx, AV_LOG_ERROR,
               "invalid x/y block length (%d/%d) for x/y chroma shift (%d/%d)\n",
               s->plane[0].xblen, s->plane[0].yblen, s->chroma_x_shift, s->chroma_y_shift);
        return AVERROR_INVALIDDATA;
    }
    if (!s->plane[0].xbsep || !s->plane[0].ybsep || s->plane[0].xbsep < s->plane[0].xblen/2 || s->plane[0].ybsep < s->plane[0].yblen/2) {
        av_log(s->avctx, AV_LOG_ERROR, "Block separation too small\n");
        return AVERROR_INVALIDDATA;
    }
    if (s->plane[0].xbsep > s->plane[0].xblen || s->plane[0].ybsep > s->plane[0].yblen) {
        av_log(s->avctx, AV_LOG_ERROR, "Block separation greater than size\n");
        return AVERROR_INVALIDDATA;
    }
    if (FFMAX(s->plane[0].xblen, s->plane[0].yblen) > MAX_BLOCKSIZE) {
        av_log(s->avctx, AV_LOG_ERROR, "Unsupported large block size\n");
        return AVERROR_PATCHWELCOME;
    }



    s->mv_precision = get_interleaved_ue_golomb(gb);
    if (s->mv_precision > 3) {
        av_log(s->avctx, AV_LOG_ERROR, "MV precision finer than eighth-pel\n");
        return AVERROR_INVALIDDATA;
    }



    s->globalmc_flag = get_bits1(gb);
    if (s->globalmc_flag) {
        memset(s->globalmc, 0, sizeof(s->globalmc));

        for (ref = 0; ref < s->num_refs; ref++) {
            if (get_bits1(gb)) {
                s->globalmc[ref].pan_tilt[0] = dirac_get_se_golomb(gb);
                s->globalmc[ref].pan_tilt[1] = dirac_get_se_golomb(gb);
            }


            if (get_bits1(gb)) {
                s->globalmc[ref].zrs_exp = get_interleaved_ue_golomb(gb);
                s->globalmc[ref].zrs[0][0] = dirac_get_se_golomb(gb);
                s->globalmc[ref].zrs[0][1] = dirac_get_se_golomb(gb);
                s->globalmc[ref].zrs[1][0] = dirac_get_se_golomb(gb);
                s->globalmc[ref].zrs[1][1] = dirac_get_se_golomb(gb);
            } else {
                s->globalmc[ref].zrs[0][0] = 1;
                s->globalmc[ref].zrs[1][1] = 1;
            }

            if (get_bits1(gb)) {
                s->globalmc[ref].perspective_exp = get_interleaved_ue_golomb(gb);
                s->globalmc[ref].perspective[0] = dirac_get_se_golomb(gb);
                s->globalmc[ref].perspective[1] = dirac_get_se_golomb(gb);
            }
            if (s->globalmc[ref].perspective_exp + (uint64_t)s->globalmc[ref].zrs_exp > 30) {
                return AVERROR_INVALIDDATA;
            }

        }
    }



    if (get_interleaved_ue_golomb(gb)) {
        av_log(s->avctx, AV_LOG_ERROR, "Unknown picture prediction mode\n");
        return AVERROR_INVALIDDATA;
    }



    s->weight_log2denom = 1;
    s->weight[0] = 1;
    s->weight[1] = 1;

    if (get_bits1(gb)) {
        s->weight_log2denom = get_interleaved_ue_golomb(gb);
        if (s->weight_log2denom < 1 || s->weight_log2denom > 8) {
            av_log(s->avctx, AV_LOG_ERROR, "weight_log2denom unsupported or invalid\n");
            s->weight_log2denom = 1;
            return AVERROR_INVALIDDATA;
        }
        s->weight[0] = dirac_get_se_golomb(gb);
        if (s->num_refs == 2)
            s->weight[1] = dirac_get_se_golomb(gb);
    }
    return 0;
}
