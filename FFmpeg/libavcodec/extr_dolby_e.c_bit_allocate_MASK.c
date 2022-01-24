#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint16_t ;

/* Variables and functions */
 int FUNC0 (int,int const) ; 
 int MAX_BIAS_EXP ; 
 size_t FUNC1 (int,int) ; 
 int* band_low_tab ; 
 int /*<<< orphan*/ ** band_ofs_tab ; 
 int* bap_tab ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int* dc_code_tab ; 
 int**** fast_decay_tab ; 
 int*** fast_gain_adj_tab ; 
 int* fast_gain_tab ; 
 int*** hearing_thresh_tab ; 
 int* ht_code_tab ; 
 int FUNC3 (int const,int const) ; 
 int*** misc_decay_tab ; 
 int** slow_decay_tab ; 
 int*** slow_gain_tab ; 

__attribute__((used)) static void FUNC4(int nb_exponent, int nb_code, int fr_code,
                         int *exp, int *bap,
                         int fg_spc, int fg_ofs, int msk_mod, int snr_ofs)
{
    int msk_val[MAX_BIAS_EXP];
    int psd_val[MAX_BIAS_EXP];
    int fast_leak  = 0;
    int slow_leak  = 0;
    int dc_code    = dc_code_tab[fr_code - 1];
    int ht_code    = ht_code_tab[fr_code - 1];
    int fast_gain  = fast_gain_tab[fg_ofs];
    int slow_decay = slow_decay_tab[dc_code][msk_mod];
    int misc_decay = misc_decay_tab[nb_code][dc_code][msk_mod];
    const uint16_t *slow_gain      = slow_gain_tab[nb_code][msk_mod];
    const uint16_t *fast_decay     = fast_decay_tab[nb_code][dc_code][msk_mod];
    const uint16_t *fast_gain_adj  = fast_gain_adj_tab[nb_code][dc_code];
    const uint16_t *hearing_thresh = hearing_thresh_tab[nb_code][ht_code];
    int i;

    for (i = 0; i < nb_exponent; i++)
        psd_val[i] = (48 - exp[i]) * 64;

    fast_gain_adj += band_ofs_tab[nb_code][fg_spc];
    for (i = 0; i < nb_exponent; i++) {
        fast_leak = FUNC3(fast_leak  - fast_decay[i],
                            psd_val[i] - fast_gain + fast_gain_adj[i]);
        slow_leak = FUNC3(slow_leak  - slow_decay,
                            psd_val[i] - slow_gain[i]);
        msk_val[i] = FUNC0(fast_leak, slow_leak);
    }

    fast_leak = 0;
    for (i = nb_exponent - 1; i > band_low_tab[nb_code]; i--) {
        fast_leak = FUNC3(fast_leak - misc_decay, psd_val[i] - fast_gain);
        msk_val[i] = FUNC0(msk_val[i], fast_leak);
    }

    for (i = 0; i < nb_exponent; i++)
        msk_val[i] = FUNC0(msk_val[i], hearing_thresh[i]);

    if (!nb_code)
        FUNC2(msk_val);

    for (i = 0; i < nb_exponent; i++) {
        int v = (16 * (snr_ofs - 64) + psd_val[i] - msk_val[i]) >> 5;
        bap[i] = bap_tab[FUNC1(v, 6)];
    }
}