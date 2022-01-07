
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* KeyBinds; } ;


 TYPE_1__ currentConfig ;

__attribute__((used)) static void unbind_action(int action)
{
 int i;

 for (i = 0; i < 32; i++)
  currentConfig.KeyBinds[i] &= ~action;
}
