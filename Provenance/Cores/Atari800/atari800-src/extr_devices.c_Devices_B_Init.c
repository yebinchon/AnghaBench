
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_ClrN ;
 int CPU_regY ;
 int Log_print (char*) ;
 scalar_t__ devbug ;

__attribute__((used)) static void Devices_B_Init(void)
{
 if (devbug)
  Log_print("B: INIT");

 CPU_regY = 1;
 CPU_ClrN;
}
