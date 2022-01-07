
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef double uint16_t ;
typedef enum Mode { ____Placeholder_Mode } Mode ;
struct TYPE_8__ {TYPE_1__* subframe; } ;
struct TYPE_10__ {double* pitch_gain; TYPE_2__ frame; } ;
struct TYPE_9__ {size_t p_gain; size_t fixed_gain; } ;
struct TYPE_7__ {int p_gain; } ;
typedef TYPE_3__ AMRNBSubframe ;
typedef TYPE_4__ AMRContext ;


 int const MODE_12k2 ;
 int const MODE_5k15 ;
 int const MODE_6k7 ;
 int const MODE_7k95 ;
 double** gains_MODE_4k75 ;
 double** gains_high ;
 double** gains_low ;
 double* qua_gain_code ;
 double* qua_gain_pit ;

__attribute__((used)) static void decode_gains(AMRContext *p, const AMRNBSubframe *amr_subframe,
                         const enum Mode mode, const int subframe,
                         float *fixed_gain_factor)
{
    if (mode == MODE_12k2 || mode == MODE_7k95) {
        p->pitch_gain[4] = qua_gain_pit [amr_subframe->p_gain ]
            * (1.0 / 16384.0);
        *fixed_gain_factor = qua_gain_code[amr_subframe->fixed_gain]
            * (1.0 / 2048.0);
    } else {
        const uint16_t *gains;

        if (mode >= MODE_6k7) {
            gains = gains_high[amr_subframe->p_gain];
        } else if (mode >= MODE_5k15) {
            gains = gains_low [amr_subframe->p_gain];
        } else {

            gains = gains_MODE_4k75[(p->frame.subframe[subframe & 2].p_gain << 1) + (subframe & 1)];
        }

        p->pitch_gain[4] = gains[0] * (1.0 / 16384.0);
        *fixed_gain_factor = gains[1] * (1.0 / 4096.0);
    }
}
