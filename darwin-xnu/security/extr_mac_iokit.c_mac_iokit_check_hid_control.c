
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kauth_cred_t ;


 int MAC_CHECK (int ,int ) ;
 int iokit_check_hid_control ;

int
mac_iokit_check_hid_control(kauth_cred_t cred)
{
 int error;

 MAC_CHECK(iokit_check_hid_control, cred);
 return (error);
}
