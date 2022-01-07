
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_ClrN ;
 int CPU_regA ;
 int CPU_regY ;
 int DBG_APRINT (char*) ;

void RDevice_INIT(void)
{
  DBG_APRINT("R*: INIT");
  CPU_regA = 1;
  CPU_regY = 1;
  CPU_ClrN;
}
