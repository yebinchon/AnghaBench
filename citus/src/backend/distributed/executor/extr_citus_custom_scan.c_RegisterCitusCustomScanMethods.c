
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AdaptiveExecutorCustomScanMethods ;
 int CoordinatorInsertSelectCustomScanMethods ;
 int DelayedErrorCustomScanMethods ;
 int RegisterCustomScanMethods (int *) ;
 int TaskTrackerCustomScanMethods ;

void
RegisterCitusCustomScanMethods(void)
{
 RegisterCustomScanMethods(&AdaptiveExecutorCustomScanMethods);
 RegisterCustomScanMethods(&TaskTrackerCustomScanMethods);
 RegisterCustomScanMethods(&CoordinatorInsertSelectCustomScanMethods);
 RegisterCustomScanMethods(&DelayedErrorCustomScanMethods);
}
