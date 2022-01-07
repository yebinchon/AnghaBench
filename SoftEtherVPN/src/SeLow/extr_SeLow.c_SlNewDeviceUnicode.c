
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_17__ {int DriverObject; } ;
struct TYPE_16__ {int Flags; scalar_t__ DeviceExtension; } ;
struct TYPE_15__ {int OpenCloseLock; TYPE_1__* SymbolicLinkName; TYPE_1__* DeviceName; TYPE_3__* DeviceObject; } ;
struct TYPE_14__ {int String; } ;
typedef TYPE_1__ SL_UNICODE ;
typedef TYPE_2__ SL_DEVICE ;
typedef int NTSTATUS ;
typedef TYPE_3__ DEVICE_OBJECT ;


 int DO_DEVICE_INITIALIZING ;
 int FILE_DEVICE_TRANSPORT ;
 int IoCreateDeviceSecure (int ,int,int *,int ,int ,int,int ,int *,TYPE_3__**) ;
 int IoCreateSymbolicLink (int *,int *) ;
 int IoDeleteDevice (TYPE_3__*) ;
 scalar_t__ NG (int ) ;
 int SlFreeUnicode (TYPE_1__*) ;
 int SlGetUnicode (TYPE_1__*) ;
 int SlNewLock () ;
 TYPE_1__* SlNewUnicode (char*) ;
 TYPE_2__* SlZeroMalloc (int) ;
 TYPE_4__* sl ;

SL_DEVICE *SlNewDeviceUnicode(SL_UNICODE *u_device_name, SL_UNICODE *u_sym_name)
{
 SL_DEVICE *ret = ((void*)0);
 DEVICE_OBJECT *dev_obj = ((void*)0);
 NTSTATUS r;
 SL_UNICODE *sddl;

 sddl = SlNewUnicode("D:P(A;;GA;;;SY)(A;;GA;;;BA)");




 r = IoCreateDeviceSecure(sl->DriverObject, sizeof(SL_DEVICE *),
  &u_device_name->String, FILE_DEVICE_TRANSPORT, 0, 0, SlGetUnicode(sddl),
  ((void*)0), &dev_obj);

 SlFreeUnicode(sddl);

 if (NG(r))
 {
  dev_obj = ((void*)0);
  goto LABEL_CLEANUP;
 }

 r = IoCreateSymbolicLink(&u_sym_name->String, &u_device_name->String);
 if (NG(r))
 {

 }

 ret = SlZeroMalloc(sizeof(SL_DEVICE));
 if (ret == ((void*)0))
 {
  goto LABEL_CLEANUP;
 }

 ret->DeviceObject = dev_obj;
 ret->DeviceName = u_device_name;
 ret->SymbolicLinkName = u_sym_name;
 *((SL_DEVICE **)dev_obj->DeviceExtension) = ret;

 dev_obj->Flags &= ~DO_DEVICE_INITIALIZING;

 ret->OpenCloseLock = SlNewLock();

LABEL_CLEANUP:
 if (ret == ((void*)0))
 {
  if (dev_obj != ((void*)0))
  {
   IoDeleteDevice(dev_obj);
  }
 }

 return ret;
}
