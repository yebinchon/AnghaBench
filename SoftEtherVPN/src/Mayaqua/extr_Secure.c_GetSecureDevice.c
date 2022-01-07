
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_4__ {scalar_t__ Id; } ;
typedef TYPE_1__ SECURE_DEVICE ;


 TYPE_1__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int SecureDeviceList ;

SECURE_DEVICE *GetSecureDevice(UINT id)
{
 UINT i;

 if (id == 0)
 {
  return ((void*)0);
 }

 for (i = 0;i < LIST_NUM(SecureDeviceList);i++)
 {
  SECURE_DEVICE *dev = LIST_DATA(SecureDeviceList, i);

  if (dev->Id == id)
  {
   return dev;
  }
 }

 return ((void*)0);
}
