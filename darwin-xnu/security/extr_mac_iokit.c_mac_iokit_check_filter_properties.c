
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kauth_cred_t ;
typedef int io_object_t ;


 int MAC_CHECK (int ,int ,int ) ;
 int iokit_check_filter_properties ;

int
mac_iokit_check_filter_properties(kauth_cred_t cred, io_object_t registry_entry)
{
 int error;

 MAC_CHECK(iokit_check_filter_properties, cred, registry_entry);
 return (error);
}
