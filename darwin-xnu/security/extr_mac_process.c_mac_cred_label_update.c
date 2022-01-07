
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct label {int dummy; } ;
typedef TYPE_1__* posix_cred_t ;
typedef int kauth_cred_t ;
struct TYPE_3__ {int cr_flags; } ;


 int CRF_MAC_ENFORCE ;
 int MAC_PERFORM (int ,int ,struct label*) ;
 int cred_label_update ;
 TYPE_1__* posix_cred_get (int ) ;

void
mac_cred_label_update(kauth_cred_t cred, struct label *newlabel)
{
 posix_cred_t pcred = posix_cred_get(cred);


 pcred->cr_flags |= CRF_MAC_ENFORCE;


 MAC_PERFORM(cred_label_update, cred, newlabel);
}
