
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int emu_status; } ;


 int DUMP_BLOCK ;
 int SSP_WAIT_MASK ;
 TYPE_1__* ssp ;
 int ssp_drc_entry (TYPE_1__*,int) ;
 int ssp_translate_block (int) ;

void ssp1601_dyn_run(int cycles)
{
 if (ssp->emu_status & SSP_WAIT_MASK) return;







}
