
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ int64_t ;
typedef int buf_padded ;
struct TYPE_6__ {int st; scalar_t__ pts; scalar_t__ dts; } ;
struct TYPE_5__ {scalar_t__ timestamp_res; int timestamp_len; int inst_bitrate_len; int au_len; scalar_t__ use_timestamps; int au_seq_num_len; scalar_t__ use_rand_acc_pt; int ocr_len; int degr_prior_len; int packet_seq_num_len; scalar_t__ use_padding; scalar_t__ use_idle; scalar_t__ use_au_end; scalar_t__ use_au_start; } ;
typedef TYPE_1__ SLConfigDescr ;
typedef TYPE_2__ PESContext ;
typedef int GetBitContext ;


 int AV_INPUT_BUFFER_PADDING_SIZE ;
 scalar_t__ AV_NOPTS_VALUE ;
 int FFMIN (int,int) ;
 int avpriv_set_pts_info (int ,int ,int,scalar_t__) ;
 int get_bits (int *,int) ;
 int get_bits1 (int *) ;
 int get_bits_count (int *) ;
 scalar_t__ get_ts64 (int *,int ) ;
 int init_get_bits (int *,int *,int) ;
 int memcpy (int *,int const*,int) ;
 int skip_bits (int *,int ) ;
 int skip_bits_long (int *,int ) ;

__attribute__((used)) static int read_sl_header(PESContext *pes, SLConfigDescr *sl,
                          const uint8_t *buf, int buf_size)
{
    GetBitContext gb;
    int au_start_flag = 0, au_end_flag = 0, ocr_flag = 0, idle_flag = 0;
    int padding_flag = 0, padding_bits = 0, inst_bitrate_flag = 0;
    int dts_flag = -1, cts_flag = -1;
    int64_t dts = AV_NOPTS_VALUE, cts = AV_NOPTS_VALUE;
    uint8_t buf_padded[128 + AV_INPUT_BUFFER_PADDING_SIZE];
    int buf_padded_size = FFMIN(buf_size, sizeof(buf_padded) - AV_INPUT_BUFFER_PADDING_SIZE);

    memcpy(buf_padded, buf, buf_padded_size);

    init_get_bits(&gb, buf_padded, buf_padded_size * 8);

    if (sl->use_au_start)
        au_start_flag = get_bits1(&gb);
    if (sl->use_au_end)
        au_end_flag = get_bits1(&gb);
    if (!sl->use_au_start && !sl->use_au_end)
        au_start_flag = au_end_flag = 1;
    if (sl->ocr_len > 0)
        ocr_flag = get_bits1(&gb);
    if (sl->use_idle)
        idle_flag = get_bits1(&gb);
    if (sl->use_padding)
        padding_flag = get_bits1(&gb);
    if (padding_flag)
        padding_bits = get_bits(&gb, 3);

    if (!idle_flag && (!padding_flag || padding_bits != 0)) {
        if (sl->packet_seq_num_len)
            skip_bits_long(&gb, sl->packet_seq_num_len);
        if (sl->degr_prior_len)
            if (get_bits1(&gb))
                skip_bits(&gb, sl->degr_prior_len);
        if (ocr_flag)
            skip_bits_long(&gb, sl->ocr_len);
        if (au_start_flag) {
            if (sl->use_rand_acc_pt)
                get_bits1(&gb);
            if (sl->au_seq_num_len > 0)
                skip_bits_long(&gb, sl->au_seq_num_len);
            if (sl->use_timestamps) {
                dts_flag = get_bits1(&gb);
                cts_flag = get_bits1(&gb);
            }
        }
        if (sl->inst_bitrate_len)
            inst_bitrate_flag = get_bits1(&gb);
        if (dts_flag == 1)
            dts = get_ts64(&gb, sl->timestamp_len);
        if (cts_flag == 1)
            cts = get_ts64(&gb, sl->timestamp_len);
        if (sl->au_len > 0)
            skip_bits_long(&gb, sl->au_len);
        if (inst_bitrate_flag)
            skip_bits_long(&gb, sl->inst_bitrate_len);
    }

    if (dts != AV_NOPTS_VALUE)
        pes->dts = dts;
    if (cts != AV_NOPTS_VALUE)
        pes->pts = cts;

    if (sl->timestamp_len && sl->timestamp_res)
        avpriv_set_pts_info(pes->st, sl->timestamp_len, 1, sl->timestamp_res);

    return (get_bits_count(&gb) + 7) >> 3;
}
