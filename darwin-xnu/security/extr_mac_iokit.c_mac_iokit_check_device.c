
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_module_data {int dummy; } ;


 int MAC_CHECK (int ,char*,struct mac_module_data*) ;
 int iokit_check_device ;

int
mac_iokit_check_device(char *devtype, struct mac_module_data *mdata)
{
 int error;

 MAC_CHECK(iokit_check_device, devtype, mdata);
 return (error);
}
