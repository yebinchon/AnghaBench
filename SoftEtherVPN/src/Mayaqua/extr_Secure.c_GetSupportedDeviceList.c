
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ref; } ;
typedef TYPE_1__ LIST ;


 int AddRef (int ) ;
 TYPE_1__* SecureDeviceList ;

LIST *GetSupportedDeviceList()
{

 AddRef(SecureDeviceList->ref);

 return SecureDeviceList;
}
