
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XAutoRepeatOff (int ) ;
 int XAutoRepeatOn (int ) ;
 scalar_t__ autorepeat ;
 int display ;

__attribute__((used)) static void autorepeat_restore(void)
{
 if (autorepeat)
  XAutoRepeatOn(display);
 else
  XAutoRepeatOff(display);
}
