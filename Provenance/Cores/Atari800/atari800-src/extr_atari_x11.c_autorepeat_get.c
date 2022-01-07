
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int global_auto_repeat; } ;
typedef TYPE_1__ XKeyboardState ;


 int XGetKeyboardControl (int ,TYPE_1__*) ;
 int autorepeat ;
 int display ;

__attribute__((used)) static void autorepeat_get(void)
{
 XKeyboardState kstat;

 XGetKeyboardControl(display, &kstat);
 autorepeat = kstat.global_auto_repeat;
}
