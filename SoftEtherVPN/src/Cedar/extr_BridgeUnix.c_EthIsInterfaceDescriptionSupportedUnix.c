
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int NumFiles; } ;
typedef TYPE_1__ DIRLIST ;


 TYPE_1__* EnumDir (char*) ;
 int FreeDir (TYPE_1__*) ;

bool EthIsInterfaceDescriptionSupportedUnix()
{
 bool ret = 0;
 DIRLIST *d = EnumDir("/etc/sysconfig/networking/devices/");

 if (d == ((void*)0))
 {
  return 0;
 }

 if (d->NumFiles >= 1)
 {
  ret = 1;
 }

 FreeDir(d);

 return ret;
}
