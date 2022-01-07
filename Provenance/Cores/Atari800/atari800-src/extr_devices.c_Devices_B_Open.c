
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ready; scalar_t__ pos; int url; } ;


 int CPU_ClrN ;
 int CPU_SetN ;
 int CPU_regY ;
 int Devices_ICAX1Z ;
 int FALSE ;
 int Log_print (char*) ;
 int MEMORY_dGetByte (int ) ;
 TYPE_1__ dev_b_status ;
 scalar_t__ devbug ;
 int memset (int ,int ,int) ;

__attribute__((used)) static void Devices_B_Open(void)
{
 if (devbug)
  Log_print("B: OPEN");

 if (MEMORY_dGetByte(Devices_ICAX1Z) != 8) {
  CPU_regY = 163;
  CPU_SetN;
  return;
 }

 memset(dev_b_status.url, 0, sizeof(dev_b_status.url));
 dev_b_status.pos = 0;
 dev_b_status.ready = FALSE;

 CPU_regY = 1;
 CPU_ClrN;
}
