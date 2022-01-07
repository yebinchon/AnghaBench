
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * mt_device_t ;
typedef int dev_t ;


 size_t minor (int ) ;
 int * mt_devices ;

__attribute__((used)) static mt_device_t
mt_get_device(dev_t devnum)
{
 return &mt_devices[minor(devnum)];
}
