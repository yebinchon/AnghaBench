
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bind1; int bind2; int command; } ;


 int Controls_GetKeyAssignment (int ,int*) ;
 int g_bindCount ;
 TYPE_1__* g_bindings ;

void Controls_GetConfig( void )
{
 int i;
 int twokeys[2];


 for (i=0; i < g_bindCount; i++)
 {

  Controls_GetKeyAssignment(g_bindings[i].command, twokeys);

  g_bindings[i].bind1 = twokeys[0];
  g_bindings[i].bind2 = twokeys[1];
 }
}
