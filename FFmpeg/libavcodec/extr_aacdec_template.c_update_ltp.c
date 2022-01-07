
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int * buf_mdct; TYPE_1__* fdsp; } ;
struct TYPE_9__ {scalar_t__* window_sequence; scalar_t__* use_kb_window; } ;
struct TYPE_8__ {int * ltp_state; int * ret; int * coeffs; int * saved; TYPE_3__ ics; } ;
struct TYPE_7__ {int (* vector_fmul_reverse ) (int *,int *,int const*,int) ;} ;
typedef TYPE_2__ SingleChannelElement ;
typedef TYPE_3__ IndividualChannelStream ;
typedef int INTFLOAT ;
typedef TYPE_4__ AACContext ;


 int AAC_MUL31 (int ,int const) ;
 int * AAC_RENAME (int ) ;
 scalar_t__ EIGHT_SHORT_SEQUENCE ;
 scalar_t__ LONG_START_SEQUENCE ;
 int ff_aac_kbd_long_1024 ;
 int ff_aac_kbd_short_128 ;
 int ff_sine_1024 ;
 int ff_sine_128 ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;
 int stub1 (int *,int *,int const*,int) ;
 int stub2 (int *,int *,int const*,int) ;
 int stub3 (int *,int *,int const*,int) ;

__attribute__((used)) static void update_ltp(AACContext *ac, SingleChannelElement *sce)
{
    IndividualChannelStream *ics = &sce->ics;
    INTFLOAT *saved = sce->saved;
    INTFLOAT *saved_ltp = sce->coeffs;
    const INTFLOAT *lwindow = ics->use_kb_window[0] ? AAC_RENAME(ff_aac_kbd_long_1024) : AAC_RENAME(ff_sine_1024);
    const INTFLOAT *swindow = ics->use_kb_window[0] ? AAC_RENAME(ff_aac_kbd_short_128) : AAC_RENAME(ff_sine_128);
    int i;

    if (ics->window_sequence[0] == EIGHT_SHORT_SEQUENCE) {
        memcpy(saved_ltp, saved, 512 * sizeof(*saved_ltp));
        memset(saved_ltp + 576, 0, 448 * sizeof(*saved_ltp));
        ac->fdsp->vector_fmul_reverse(saved_ltp + 448, ac->buf_mdct + 960, &swindow[64], 64);

        for (i = 0; i < 64; i++)
            saved_ltp[i + 512] = AAC_MUL31(ac->buf_mdct[1023 - i], swindow[63 - i]);
    } else if (ics->window_sequence[0] == LONG_START_SEQUENCE) {
        memcpy(saved_ltp, ac->buf_mdct + 512, 448 * sizeof(*saved_ltp));
        memset(saved_ltp + 576, 0, 448 * sizeof(*saved_ltp));
        ac->fdsp->vector_fmul_reverse(saved_ltp + 448, ac->buf_mdct + 960, &swindow[64], 64);

        for (i = 0; i < 64; i++)
            saved_ltp[i + 512] = AAC_MUL31(ac->buf_mdct[1023 - i], swindow[63 - i]);
    } else {
        ac->fdsp->vector_fmul_reverse(saved_ltp, ac->buf_mdct + 512, &lwindow[512], 512);

        for (i = 0; i < 512; i++)
            saved_ltp[i + 512] = AAC_MUL31(ac->buf_mdct[1023 - i], lwindow[511 - i]);
    }

    memcpy(sce->ltp_state, sce->ltp_state+1024, 1024 * sizeof(*sce->ltp_state));
    memcpy(sce->ltp_state+1024, sce->ret, 1024 * sizeof(*sce->ltp_state));
    memcpy(sce->ltp_state+2048, saved_ltp, 1024 * sizeof(*sce->ltp_state));
}
