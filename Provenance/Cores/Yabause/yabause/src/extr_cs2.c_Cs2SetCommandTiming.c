
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int _commandtiming; } ;


 TYPE_1__* Cs2Area ;

void Cs2SetCommandTiming(u8 cmd) {
   switch(cmd) {
      default:
               Cs2Area->_commandtiming = 1;
               break;
   }
}
