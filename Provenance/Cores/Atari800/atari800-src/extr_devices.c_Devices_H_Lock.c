
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Devices_H_LockUnlock (int ) ;
 int Log_print (char*) ;
 int TRUE ;
 scalar_t__ devbug ;

__attribute__((used)) static void Devices_H_Lock(void)
{
 if (devbug)
  Log_print("LOCK Command");
 Devices_H_LockUnlock(TRUE);
}
