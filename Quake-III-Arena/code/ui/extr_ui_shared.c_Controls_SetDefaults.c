
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int defaultbind2; int bind2; int defaultbind1; int bind1; } ;


 int g_bindCount ;
 TYPE_1__* g_bindings ;

void Controls_SetDefaults( void )
{
 int i;


  for (i=0; i < g_bindCount; i++)
 {
  g_bindings[i].bind1 = g_bindings[i].defaultbind1;
  g_bindings[i].bind2 = g_bindings[i].defaultbind2;
 }
}
