
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_SetN ;
 int CPU_regY ;
 int Log_print (char*) ;
 scalar_t__ devbug ;

__attribute__((used)) static void Devices_H_Status(void)
{
 if (devbug)
  Log_print("HHSTAT");

 CPU_regY = 146;
 CPU_SetN;
}
