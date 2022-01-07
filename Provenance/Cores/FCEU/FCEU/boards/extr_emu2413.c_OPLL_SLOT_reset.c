
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; scalar_t__ egout; scalar_t__ pgout; scalar_t__ volume; scalar_t__ block; scalar_t__ fnum; scalar_t__ sustine; scalar_t__ tll; scalar_t__ rks; scalar_t__ eg_dphase; int eg_phase; int eg_mode; scalar_t__ feedback; scalar_t__* output; scalar_t__ dphase; scalar_t__ phase; int sintbl; } ;
typedef TYPE_1__ OPLL_SLOT ;


 int EG_DP_WIDTH ;
 int SETTLE ;
 int * waveform ;

__attribute__((used)) static void OPLL_SLOT_reset(OPLL_SLOT * slot, int type) {
 slot->type = type;
 slot->sintbl = waveform[0];
 slot->phase = 0;
 slot->dphase = 0;
 slot->output[0] = 0;
 slot->output[1] = 0;
 slot->feedback = 0;
 slot->eg_mode = SETTLE;
 slot->eg_phase = EG_DP_WIDTH;
 slot->eg_dphase = 0;
 slot->rks = 0;
 slot->tll = 0;
 slot->sustine = 0;
 slot->fnum = 0;
 slot->block = 0;
 slot->volume = 0;
 slot->pgout = 0;
 slot->egout = 0;
}
