
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int IsEnabled; int DDnsTriggerInt; } ;
typedef TYPE_1__ AZURE_CLIENT ;


 int AcApplyCurrentConfig (TYPE_1__*,int *) ;

void AcSetEnable(AZURE_CLIENT *ac, bool enabled)
{
 bool old_status;

 if (ac == ((void*)0))
 {
  return;
 }

 old_status = ac->IsEnabled;

 ac->IsEnabled = enabled;

 if (ac->IsEnabled && (ac->IsEnabled != old_status))
 {
  ac->DDnsTriggerInt++;
 }

 AcApplyCurrentConfig(ac, ((void*)0));
}
