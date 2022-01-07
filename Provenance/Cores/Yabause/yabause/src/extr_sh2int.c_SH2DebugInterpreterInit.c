
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int breakpointEnabled; int backtraceEnabled; } ;
struct TYPE_3__ {int breakpointEnabled; int backtraceEnabled; } ;


 TYPE_2__* MSH2 ;
 int SH2InterpreterInit () ;
 TYPE_1__* SSH2 ;

int SH2DebugInterpreterInit() {

  SH2InterpreterInit();
  MSH2->breakpointEnabled = 1;
  SSH2->breakpointEnabled = 1;
  MSH2->backtraceEnabled = 1;
  SSH2->backtraceEnabled = 1;
  return 0;
}
