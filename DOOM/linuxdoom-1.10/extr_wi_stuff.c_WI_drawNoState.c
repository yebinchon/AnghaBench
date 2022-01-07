
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WI_drawShowNextLoc () ;
 int snl_pointeron ;

void WI_drawNoState(void)
{
    snl_pointeron = 1;
    WI_drawShowNextLoc();
}
