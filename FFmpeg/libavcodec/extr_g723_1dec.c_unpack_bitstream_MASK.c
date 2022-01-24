#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_5__ {int* lsp_index; scalar_t__ cur_rate; int* pitch_lag; TYPE_1__* subframe; int /*<<< orphan*/  cur_frame_type; } ;
struct TYPE_4__ {int amp_index; int ad_cb_lag; int dirac_train; int ad_cb_gain; int pulse_pos; int pulse_sign; void* grid_index; } ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_2__ G723_1_ChannelContext ;

/* Variables and functions */
 int /*<<< orphan*/  ACTIVE_FRAME ; 
 void* FUNC0 (int,int) ; 
 int GAIN_LEVELS ; 
 scalar_t__ PITCH_MIN ; 
 scalar_t__ RATE_5300 ; 
 scalar_t__ RATE_6300 ; 
 int /*<<< orphan*/  SID_FRAME ; 
 int SUBFRAMES ; 
 int SUBFRAME_LEN ; 
 int /*<<< orphan*/  UNTRANSMITTED_FRAME ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(G723_1_ChannelContext *p, const uint8_t *buf,
                            int buf_size)
{
    GetBitContext gb;
    int ad_cb_len;
    int temp, info_bits, i;
    int ret;

    ret = FUNC3(&gb, buf, buf_size);
    if (ret < 0)
        return ret;

    /* Extract frame type and rate info */
    info_bits = FUNC1(&gb, 2);

    if (info_bits == 3) {
        p->cur_frame_type = UNTRANSMITTED_FRAME;
        return 0;
    }

    /* Extract 24 bit lsp indices, 8 bit for each band */
    p->lsp_index[2] = FUNC1(&gb, 8);
    p->lsp_index[1] = FUNC1(&gb, 8);
    p->lsp_index[0] = FUNC1(&gb, 8);

    if (info_bits == 2) {
        p->cur_frame_type = SID_FRAME;
        p->subframe[0].amp_index = FUNC1(&gb, 6);
        return 0;
    }

    /* Extract the info common to both rates */
    p->cur_rate       = info_bits ? RATE_5300 : RATE_6300;
    p->cur_frame_type = ACTIVE_FRAME;

    p->pitch_lag[0] = FUNC1(&gb, 7);
    if (p->pitch_lag[0] > 123)       /* test if forbidden code */
        return -1;
    p->pitch_lag[0] += PITCH_MIN;
    p->subframe[1].ad_cb_lag = FUNC1(&gb, 2);

    p->pitch_lag[1] = FUNC1(&gb, 7);
    if (p->pitch_lag[1] > 123)
        return -1;
    p->pitch_lag[1] += PITCH_MIN;
    p->subframe[3].ad_cb_lag = FUNC1(&gb, 2);
    p->subframe[0].ad_cb_lag = 1;
    p->subframe[2].ad_cb_lag = 1;

    for (i = 0; i < SUBFRAMES; i++) {
        /* Extract combined gain */
        temp = FUNC1(&gb, 12);
        ad_cb_len = 170;
        p->subframe[i].dirac_train = 0;
        if (p->cur_rate == RATE_6300 && p->pitch_lag[i >> 1] < SUBFRAME_LEN - 2) {
            p->subframe[i].dirac_train = temp >> 11;
            temp &= 0x7FF;
            ad_cb_len = 85;
        }
        p->subframe[i].ad_cb_gain = FUNC0(temp, GAIN_LEVELS);
        if (p->subframe[i].ad_cb_gain < ad_cb_len) {
            p->subframe[i].amp_index = temp - p->subframe[i].ad_cb_gain *
                                       GAIN_LEVELS;
        } else {
            return -1;
        }
    }

    p->subframe[0].grid_index = FUNC2(&gb);
    p->subframe[1].grid_index = FUNC2(&gb);
    p->subframe[2].grid_index = FUNC2(&gb);
    p->subframe[3].grid_index = FUNC2(&gb);

    if (p->cur_rate == RATE_6300) {
        FUNC4(&gb);  /* skip reserved bit */

        /* Compute pulse_pos index using the 13-bit combined position index */
        temp = FUNC1(&gb, 13);
        p->subframe[0].pulse_pos = temp / 810;

        temp -= p->subframe[0].pulse_pos * 810;
        p->subframe[1].pulse_pos = FUNC0(temp, 90);

        temp -= p->subframe[1].pulse_pos * 90;
        p->subframe[2].pulse_pos = FUNC0(temp, 9);
        p->subframe[3].pulse_pos = temp - p->subframe[2].pulse_pos * 9;

        p->subframe[0].pulse_pos = (p->subframe[0].pulse_pos << 16) +
                                   FUNC1(&gb, 16);
        p->subframe[1].pulse_pos = (p->subframe[1].pulse_pos << 14) +
                                   FUNC1(&gb, 14);
        p->subframe[2].pulse_pos = (p->subframe[2].pulse_pos << 16) +
                                   FUNC1(&gb, 16);
        p->subframe[3].pulse_pos = (p->subframe[3].pulse_pos << 14) +
                                   FUNC1(&gb, 14);

        p->subframe[0].pulse_sign = FUNC1(&gb, 6);
        p->subframe[1].pulse_sign = FUNC1(&gb, 5);
        p->subframe[2].pulse_sign = FUNC1(&gb, 6);
        p->subframe[3].pulse_sign = FUNC1(&gb, 5);
    } else { /* 5300 bps */
        p->subframe[0].pulse_pos  = FUNC1(&gb, 12);
        p->subframe[1].pulse_pos  = FUNC1(&gb, 12);
        p->subframe[2].pulse_pos  = FUNC1(&gb, 12);
        p->subframe[3].pulse_pos  = FUNC1(&gb, 12);

        p->subframe[0].pulse_sign = FUNC1(&gb, 4);
        p->subframe[1].pulse_sign = FUNC1(&gb, 4);
        p->subframe[2].pulse_sign = FUNC1(&gb, 4);
        p->subframe[3].pulse_sign = FUNC1(&gb, 4);
    }

    return 0;
}