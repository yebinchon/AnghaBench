
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kauth_cred_t ;


 int MAC_CHECK (int ,int ,char const*) ;
 int kext_check_unload ;

int
mac_kext_check_unload(kauth_cred_t cred, const char *identifier) {
 int error;

 MAC_CHECK(kext_check_unload, cred, identifier);

 return (error);
}
