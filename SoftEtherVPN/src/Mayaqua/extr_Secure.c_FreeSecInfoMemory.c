
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* FirmwareVersion; struct TYPE_4__* HardwareVersion; struct TYPE_4__* SerialNumber; struct TYPE_4__* Model; struct TYPE_4__* ManufacturerId; struct TYPE_4__* Label; } ;
typedef TYPE_1__ SEC_INFO ;


 int Free (TYPE_1__*) ;

void FreeSecInfoMemory(SEC_INFO *s)
{

 if (s == ((void*)0))
 {
  return;
 }

 Free(s->Label);
 Free(s->ManufacturerId);
 Free(s->Model);
 Free(s->SerialNumber);
 Free(s->HardwareVersion);
 Free(s->FirmwareVersion);
 Free(s);
}
