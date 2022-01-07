
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int input_autoconfigure_connect (char const*,int *,char const*,unsigned int,int ,int ) ;

__attribute__((used)) static void libusb_hid_device_add_autodetect(unsigned idx,
      const char *device_name, const char *driver_name,
      uint16_t dev_vid, uint16_t dev_pid)
{
   input_autoconfigure_connect(
         device_name,
         ((void*)0),
         driver_name,
         idx,
         dev_vid,
         dev_pid
         );
}
