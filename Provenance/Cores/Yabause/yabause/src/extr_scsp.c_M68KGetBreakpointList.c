
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int m68kcodebreakpoint_struct ;
struct TYPE_2__ {int * codebreakpoint; } ;


 TYPE_1__* ScspInternalVars ;

m68kcodebreakpoint_struct *
M68KGetBreakpointList ()
{
  return ScspInternalVars->codebreakpoint;
}
