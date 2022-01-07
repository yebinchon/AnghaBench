
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Devices_H_LockUnlock (int ) ;
 int FALSE ;
 int Log_print (char*) ;
 scalar_t__ devbug ;

__attribute__((used)) static void Devices_H_Unlock(void)
{
 if (devbug)
  Log_print("UNLOCK Command");
 Devices_H_LockUnlock(FALSE);
}
