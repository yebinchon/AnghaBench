
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IOPMCopySleepWakeUUIDKey (int *,int ) ;
 scalar_t__ get_test_wake_uuid (int *) ;

__attribute__((used)) static bool
is_wakeuuid_set(void)
{




 return (get_test_wake_uuid(((void*)0)) || IOPMCopySleepWakeUUIDKey(((void*)0), 0));
}
