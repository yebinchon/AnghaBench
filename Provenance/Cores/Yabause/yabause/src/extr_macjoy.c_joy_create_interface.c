
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int iface; } ;
typedef TYPE_1__ joydata_t ;
typedef int io_object_t ;
struct TYPE_8__ {scalar_t__ (* QueryInterface ) (TYPE_2__**,int ,int ) ;int (* Release ) (TYPE_2__**) ;} ;
typedef int SInt32 ;
typedef int LPVOID ;
typedef TYPE_2__ IOCFPlugInInterface ;


 int CFUUIDGetUUIDBytes (int ) ;
 scalar_t__ IOCreatePlugInInterfaceForService (int ,int ,int ,TYPE_2__***,int *) ;
 scalar_t__ S_OK ;
 int kIOCFPlugInInterfaceID ;
 int kIOHIDDeviceInterfaceID ;
 int kIOHIDDeviceUserClientTypeID ;
 scalar_t__ kIOReturnSuccess ;
 scalar_t__ stub1 (TYPE_2__**,int ,int ) ;
 int stub2 (TYPE_2__**) ;

__attribute__((used)) static int joy_create_interface(io_object_t hidDevice, joydata_t *joy) {
    IOCFPlugInInterface **plugin;
    SInt32 score = 0;



    if(IOCreatePlugInInterfaceForService(hidDevice,
                                         kIOHIDDeviceUserClientTypeID,
                                         kIOCFPlugInInterfaceID, &plugin,
                                         &score) != kIOReturnSuccess) {
        return 0;
    }


    if((*plugin)->QueryInterface(plugin,
                                 CFUUIDGetUUIDBytes(kIOHIDDeviceInterfaceID),
                                 (LPVOID)&joy->iface) != S_OK) {
        return 0;
    }


    (*plugin)->Release(plugin);

    return 1;
}
