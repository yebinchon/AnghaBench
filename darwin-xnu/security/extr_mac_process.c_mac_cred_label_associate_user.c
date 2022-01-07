
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kauth_cred_t ;


 int MAC_PERFORM (int ,int ) ;
 int cred_label_associate_user ;

void
mac_cred_label_associate_user(kauth_cred_t cred)
{

 MAC_PERFORM(cred_label_associate_user, cred);
}
