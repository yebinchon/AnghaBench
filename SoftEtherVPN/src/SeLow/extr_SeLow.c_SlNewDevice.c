
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SL_UNICODE ;
typedef int SL_DEVICE ;


 int SlFreeUnicode (int *) ;
 int * SlNewDeviceUnicode (int *,int *) ;
 int * SlNewUnicode (char*) ;

SL_DEVICE *SlNewDevice(char *device_name, char *symbolic_link_name)
{
 SL_UNICODE *u_device_name = SlNewUnicode(device_name);
 SL_UNICODE *u_sym_name = SlNewUnicode(symbolic_link_name);

 SL_DEVICE *ret = SlNewDeviceUnicode(u_device_name, u_sym_name);

 if (ret == ((void*)0))
 {
  SlFreeUnicode(u_device_name);
  SlFreeUnicode(u_sym_name);
 }

 return ret;
}
