
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int String; } ;
struct TYPE_5__ {int OpenCloseLock; TYPE_2__* SymbolicLinkName; TYPE_2__* DeviceName; int DeviceObject; } ;
typedef TYPE_1__ SL_DEVICE ;
typedef int NTSTATUS ;


 int IoDeleteDevice (int ) ;
 int IoDeleteSymbolicLink (int *) ;
 scalar_t__ NG (int ) ;
 int SlFree (TYPE_1__*) ;
 int SlFreeLock (int ) ;
 int SlFreeUnicode (TYPE_2__*) ;

void SlFreeDevice(SL_DEVICE *dev)
{
 NTSTATUS r;

 if (dev == ((void*)0))
 {
  return;
 }

 r = IoDeleteSymbolicLink(&dev->SymbolicLinkName->String);
 if (NG(r))
 {

 }

 IoDeleteDevice(dev->DeviceObject);

 SlFreeUnicode(dev->DeviceName);
 SlFreeUnicode(dev->SymbolicLinkName);

 SlFreeLock(dev->OpenCloseLock);

 SlFree(dev);
}
