
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_port_t ;
typedef int io_iterator_t ;
typedef scalar_t__ IOReturn ;
typedef int CFMutableDictionaryRef ;


 scalar_t__ IOServiceGetMatchingServices (int ,int ,int *) ;
 int IOServiceMatching (int ) ;
 int kIOHIDDeviceKey ;
 scalar_t__ kIOReturnSuccess ;

__attribute__((used)) static void joy_get_iterator(mach_port_t port, io_iterator_t *iter) {
    CFMutableDictionaryRef d;
    IOReturn rv;



    if(!(d = IOServiceMatching(kIOHIDDeviceKey))) {
        return;
    }


    rv = IOServiceGetMatchingServices(port, d, iter);

    if(rv != kIOReturnSuccess || !(*iter)) {
        return;
    }
}
