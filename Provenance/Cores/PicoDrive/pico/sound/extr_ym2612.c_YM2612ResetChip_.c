
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ status; } ;
struct TYPE_5__ {TYPE_1__ ST; scalar_t__ eg_cnt; scalar_t__ eg_timer; } ;
struct TYPE_6__ {int* REGS; scalar_t__ addr_A1; scalar_t__ dacen; int * CH; TYPE_2__ OPN; } ;


 int OPNWriteReg (int,int) ;
 int memset (int*,int ,int) ;
 int reset_channels (int *) ;
 int set_timers (int) ;
 TYPE_3__ ym2612 ;

void YM2612ResetChip_(void)
{
 int i;

 memset(ym2612.REGS, 0, sizeof(ym2612.REGS));

 set_timers( 0x30 );
 ym2612.REGS[0x27] = 0x30;

 ym2612.OPN.eg_timer = 0;
 ym2612.OPN.eg_cnt = 0;
 ym2612.OPN.ST.status = 0;

 reset_channels( &ym2612.CH[0] );
 for(i = 0xb6 ; i >= 0xb4 ; i-- )
 {
  OPNWriteReg(i ,0xc0);
  OPNWriteReg(i|0x100,0xc0);
  ym2612.REGS[i ] = 0xc0;
  ym2612.REGS[i|0x100] = 0xc0;
 }
 for(i = 0xb2 ; i >= 0x30 ; i-- )
 {
  OPNWriteReg(i ,0);
  OPNWriteReg(i|0x100,0);
 }
 for(i = 0x26 ; i >= 0x20 ; i-- ) OPNWriteReg(i,0);

 ym2612.dacen = 0;
 ym2612.addr_A1 = 0;
}
