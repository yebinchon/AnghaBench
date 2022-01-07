
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ IOReturn ;
typedef int IOPMAssertionID ;
typedef int CFStringRef ;


 int CFSTR (char*) ;
 scalar_t__ IOPMAssertionCreateWithName (int ,int ,int ,int*) ;
 int hb_deep_log (int,char*,int) ;
 int hb_error (char*) ;
 int hb_log (char*) ;
 int kIOPMAssertPreventUserIdleSystemSleep ;
 int kIOPMAssertionLevelOn ;
 scalar_t__ kIOReturnSuccess ;

void hb_system_sleep_private_disable(void *opaque)
{
}
