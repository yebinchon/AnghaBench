#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  buf_padded ;
struct TYPE_6__ {int /*<<< orphan*/  st; scalar_t__ pts; scalar_t__ dts; } ;
struct TYPE_5__ {scalar_t__ timestamp_res; int /*<<< orphan*/  timestamp_len; int /*<<< orphan*/  inst_bitrate_len; int /*<<< orphan*/  au_len; scalar_t__ use_timestamps; int /*<<< orphan*/  au_seq_num_len; scalar_t__ use_rand_acc_pt; int /*<<< orphan*/  ocr_len; int /*<<< orphan*/  degr_prior_len; int /*<<< orphan*/  packet_seq_num_len; scalar_t__ use_padding; scalar_t__ use_idle; scalar_t__ use_au_end; scalar_t__ use_au_start; } ;
typedef  TYPE_1__ SLConfigDescr ;
typedef  TYPE_2__ PESContext ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int AV_INPUT_BUFFER_PADDING_SIZE ; 
 scalar_t__ AV_NOPTS_VALUE ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(PESContext *pes, SLConfigDescr *sl,
                          const uint8_t *buf, int buf_size)
{
    GetBitContext gb;
    int au_start_flag = 0, au_end_flag = 0, ocr_flag = 0, idle_flag = 0;
    int padding_flag = 0, padding_bits = 0, inst_bitrate_flag = 0;
    int dts_flag = -1, cts_flag = -1;
    int64_t dts = AV_NOPTS_VALUE, cts = AV_NOPTS_VALUE;
    uint8_t buf_padded[128 + AV_INPUT_BUFFER_PADDING_SIZE];
    int buf_padded_size = FUNC0(buf_size, sizeof(buf_padded) - AV_INPUT_BUFFER_PADDING_SIZE);

    FUNC7(buf_padded, buf, buf_padded_size);

    FUNC6(&gb, buf_padded, buf_padded_size * 8);

    if (sl->use_au_start)
        au_start_flag = FUNC3(&gb);
    if (sl->use_au_end)
        au_end_flag = FUNC3(&gb);
    if (!sl->use_au_start && !sl->use_au_end)
        au_start_flag = au_end_flag = 1;
    if (sl->ocr_len > 0)
        ocr_flag = FUNC3(&gb);
    if (sl->use_idle)
        idle_flag = FUNC3(&gb);
    if (sl->use_padding)
        padding_flag = FUNC3(&gb);
    if (padding_flag)
        padding_bits = FUNC2(&gb, 3);

    if (!idle_flag && (!padding_flag || padding_bits != 0)) {
        if (sl->packet_seq_num_len)
            FUNC9(&gb, sl->packet_seq_num_len);
        if (sl->degr_prior_len)
            if (FUNC3(&gb))
                FUNC8(&gb, sl->degr_prior_len);
        if (ocr_flag)
            FUNC9(&gb, sl->ocr_len);
        if (au_start_flag) {
            if (sl->use_rand_acc_pt)
                FUNC3(&gb);
            if (sl->au_seq_num_len > 0)
                FUNC9(&gb, sl->au_seq_num_len);
            if (sl->use_timestamps) {
                dts_flag = FUNC3(&gb);
                cts_flag = FUNC3(&gb);
            }
        }
        if (sl->inst_bitrate_len)
            inst_bitrate_flag = FUNC3(&gb);
        if (dts_flag == 1)
            dts = FUNC5(&gb, sl->timestamp_len);
        if (cts_flag == 1)
            cts = FUNC5(&gb, sl->timestamp_len);
        if (sl->au_len > 0)
            FUNC9(&gb, sl->au_len);
        if (inst_bitrate_flag)
            FUNC9(&gb, sl->inst_bitrate_len);
    }

    if (dts != AV_NOPTS_VALUE)
        pes->dts = dts;
    if (cts != AV_NOPTS_VALUE)
        pes->pts = cts;

    if (sl->timestamp_len && sl->timestamp_res)
        FUNC1(pes->st, sl->timestamp_len, 1, sl->timestamp_res);

    return (FUNC4(&gb) + 7) >> 3;
}