
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_5__ {int SwitchType; } ;
typedef TYPE_1__ LOG ;


 int LockLog (TYPE_1__*) ;
 int UnlockLog (TYPE_1__*) ;

void SetLogSwitchType(LOG *g, UINT switch_type)
{

 if (g == ((void*)0))
 {
  return;
 }

 LockLog(g);
 {
  g->SwitchType = switch_type;
 }
 UnlockLog(g);
}
