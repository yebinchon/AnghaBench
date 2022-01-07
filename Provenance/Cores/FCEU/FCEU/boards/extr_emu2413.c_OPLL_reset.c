
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void* uint32 ;
typedef int int32 ;
struct TYPE_4__ {scalar_t__ oplltime; void* opllstep; void* realstep; scalar_t__* key_status; int * slot; scalar_t__ mask; scalar_t__ am_phase; scalar_t__ pm_phase; scalar_t__ out; scalar_t__ adr; } ;
typedef TYPE_1__ OPLL ;


 int OPLL_SLOT_reset (int *,int) ;
 int OPLL_writeReg (TYPE_1__*,int,int ) ;
 int clk ;
 int rate ;

void OPLL_reset(OPLL * opll) {
 int32 i;

 if (!opll)
  return;

 opll->adr = 0;
 opll->out = 0;

 opll->pm_phase = 0;
 opll->am_phase = 0;

 opll->mask = 0;

 for (i = 0; i < 12; i++)
  OPLL_SLOT_reset(&opll->slot[i], i % 2);

 for (i = 0; i < 6; i++) {
  opll->key_status[i] = 0;

 }

 for (i = 0; i < 0x40; i++)
  OPLL_writeReg(opll, i, 0);

 opll->realstep = (uint32)((1 << 31) / rate);
 opll->opllstep = (uint32)((1 << 31) / (clk / 72));
 opll->oplltime = 0;
}
