
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pos; int ready; int url; } ;


 int CPU_ClrN ;
 int CPU_regY ;
 int Log_print (char*,int ) ;
 int TRUE ;
 TYPE_1__ dev_b_status ;
 scalar_t__ devbug ;

__attribute__((used)) static void Devices_B_Close(void)
{
 if (devbug)
  Log_print("B: CLOSE (%s)", dev_b_status.url);

 if (dev_b_status.pos > 0)
  dev_b_status.ready = TRUE;

 CPU_regY = 1;
 CPU_ClrN;
}
