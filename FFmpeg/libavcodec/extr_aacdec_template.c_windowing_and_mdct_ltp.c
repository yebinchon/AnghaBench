
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int (* mdct_calc ) (TYPE_6__*,int *,int *) ;} ;
struct TYPE_9__ {TYPE_6__ mdct_ltp; TYPE_1__* fdsp; } ;
struct TYPE_8__ {scalar_t__* window_sequence; scalar_t__* use_kb_window; } ;
struct TYPE_7__ {int (* vector_fmul_reverse ) (int *,int *,int const*,int) ;int (* vector_fmul ) (int *,int *,int const*,int) ;} ;
typedef TYPE_2__ IndividualChannelStream ;
typedef int INTFLOAT ;
typedef TYPE_3__ AACContext ;


 int * AAC_RENAME (int ) ;
 scalar_t__ LONG_START_SEQUENCE ;
 scalar_t__ LONG_STOP_SEQUENCE ;
 int ff_aac_kbd_long_1024 ;
 int ff_aac_kbd_short_128 ;
 int ff_sine_1024 ;
 int ff_sine_128 ;
 int memset (int *,int ,int) ;
 int stub1 (int *,int *,int const*,int) ;
 int stub2 (int *,int *,int const*,int) ;
 int stub3 (int *,int *,int const*,int) ;
 int stub4 (int *,int *,int const*,int) ;
 int stub5 (TYPE_6__*,int *,int *) ;

__attribute__((used)) static void windowing_and_mdct_ltp(AACContext *ac, INTFLOAT *out,
                                   INTFLOAT *in, IndividualChannelStream *ics)
{
    const INTFLOAT *lwindow = ics->use_kb_window[0] ? AAC_RENAME(ff_aac_kbd_long_1024) : AAC_RENAME(ff_sine_1024);
    const INTFLOAT *swindow = ics->use_kb_window[0] ? AAC_RENAME(ff_aac_kbd_short_128) : AAC_RENAME(ff_sine_128);
    const INTFLOAT *lwindow_prev = ics->use_kb_window[1] ? AAC_RENAME(ff_aac_kbd_long_1024) : AAC_RENAME(ff_sine_1024);
    const INTFLOAT *swindow_prev = ics->use_kb_window[1] ? AAC_RENAME(ff_aac_kbd_short_128) : AAC_RENAME(ff_sine_128);

    if (ics->window_sequence[0] != LONG_STOP_SEQUENCE) {
        ac->fdsp->vector_fmul(in, in, lwindow_prev, 1024);
    } else {
        memset(in, 0, 448 * sizeof(*in));
        ac->fdsp->vector_fmul(in + 448, in + 448, swindow_prev, 128);
    }
    if (ics->window_sequence[0] != LONG_START_SEQUENCE) {
        ac->fdsp->vector_fmul_reverse(in + 1024, in + 1024, lwindow, 1024);
    } else {
        ac->fdsp->vector_fmul_reverse(in + 1024 + 448, in + 1024 + 448, swindow, 128);
        memset(in + 1024 + 576, 0, 448 * sizeof(*in));
    }
    ac->mdct_ltp.mdct_calc(&ac->mdct_ltp, out, in);
}
