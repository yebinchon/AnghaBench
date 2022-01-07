
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kauth_cred_t ;


 int MAC_CHECK (int ,int ) ;
 int kext_check_query ;

int
mac_kext_check_query(kauth_cred_t cred) {
 int error;

 MAC_CHECK(kext_check_query, cred);

 return (error);
}
