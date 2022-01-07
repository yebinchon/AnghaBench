
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kauth_cred_t ;
typedef int io_object_t ;


 int MAC_CHECK (int ,int ,int ,char const*) ;
 int iokit_check_get_property ;

int
mac_iokit_check_get_property(kauth_cred_t cred, io_object_t registry_entry, const char *name)
{
 int error;

 MAC_CHECK(iokit_check_get_property, cred, registry_entry, name);
 return (error);
}
