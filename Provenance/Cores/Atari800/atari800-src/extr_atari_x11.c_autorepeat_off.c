
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XAutoRepeatOff (int ) ;
 int display ;

__attribute__((used)) static void autorepeat_off(void)
{
 XAutoRepeatOff(display);
}
