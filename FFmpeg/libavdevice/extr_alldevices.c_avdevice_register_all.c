
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int avpriv_register_devices (int ,int ) ;
 int indev_list ;
 int outdev_list ;

void avdevice_register_all(void)
{
    avpriv_register_devices(outdev_list, indev_list);
}
