
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BBA_NCRA ;
 int BBA_NCRA_RESET ;
 int bba_cmd_in8_slow (int) ;
 int bba_out8 (int,int) ;
 int udelay (int) ;

__attribute__((used)) static void __bba_reset()
{
 bba_out8(0x60,0x00);
 udelay(10000);
 bba_cmd_in8_slow(0x0F);
 udelay(10000);
 bba_out8(BBA_NCRA,BBA_NCRA_RESET);
 bba_out8(BBA_NCRA,0x00);
}
