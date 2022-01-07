
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ io_object_t ;
typedef scalar_t__ io_iterator_t ;


 scalar_t__ IOIteratorNext (scalar_t__) ;
 int IOObjectRelease (scalar_t__) ;
 int joy_count ;
 int joy_get_iterator (int ,scalar_t__*) ;
 int joy_read_device (scalar_t__) ;
 int * joys ;
 int kIOMasterPortDefault ;

int joy_scan_joysticks(void) {
    io_iterator_t iter = 0;
    io_object_t dev;

    if(joys != ((void*)0)) {
        return -1;
    }


    joy_get_iterator(kIOMasterPortDefault, &iter);

    if(iter != 0) {
        while((dev = IOIteratorNext(iter))) {
            joy_read_device(dev);
            IOObjectRelease(dev);
        }


        IOObjectRelease(iter);
    }

    return joy_count;
}
