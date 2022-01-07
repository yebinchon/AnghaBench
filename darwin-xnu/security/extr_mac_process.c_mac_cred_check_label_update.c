
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int dummy; } ;
typedef int kauth_cred_t ;


 int MAC_CHECK (int ,int ,struct label*) ;
 int cred_check_label_update ;
 int mac_proc_enforce ;

int
mac_cred_check_label_update(kauth_cred_t cred, struct label *newlabel)
{
 int error;







 MAC_CHECK(cred_check_label_update, cred, newlabel);

 return (error);
}
