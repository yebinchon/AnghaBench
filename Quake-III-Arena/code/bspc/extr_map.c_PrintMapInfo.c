
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Log_Print (char*,...) ;
 int nummapbrushes ;
 int nummapbrushsides ;

void PrintMapInfo(void)
{
 Log_Print("\n");
 Log_Print("%6i brushes\n", nummapbrushes);
 Log_Print("%6i brush sides\n", nummapbrushsides);
}
