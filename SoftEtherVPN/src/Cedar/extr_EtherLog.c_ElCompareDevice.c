
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int DeviceName; } ;
typedef TYPE_1__ EL_DEVICE ;


 int StrCmpi (int ,int ) ;

int ElCompareDevice(void *p1, void *p2)
{
 EL_DEVICE *d1, *d2;

 if (p1 == ((void*)0) || p2 == ((void*)0))
 {
  return 0;
 }
 d1 = *(EL_DEVICE **)p1;
 d2 = *(EL_DEVICE **)p2;
 if (d1 == ((void*)0) || d2 == ((void*)0))
 {
  return 0;
 }

 return StrCmpi(d1->DeviceName, d2->DeviceName);
}
