
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ IsSSH2Running; } ;


 int SH2Reset (int ) ;
 int SSH2 ;
 TYPE_1__ yabsys ;

void YabauseStopSlave(void) {
   SH2Reset(SSH2);
   yabsys.IsSSH2Running = 0;
}
