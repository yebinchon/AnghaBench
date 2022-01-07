
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AutoChooseROM (int ) ;
 int autochoose_order_xegame ;

int SYSROM_AutoChooseXEGame(void)
{
 return AutoChooseROM(autochoose_order_xegame);
}
