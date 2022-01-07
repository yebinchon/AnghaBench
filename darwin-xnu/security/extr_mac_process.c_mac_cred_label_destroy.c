
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* kauth_cred_t ;
struct TYPE_3__ {int * cr_label; } ;


 int mac_cred_label_free (int *) ;

void
mac_cred_label_destroy(kauth_cred_t cred)
{

 mac_cred_label_free(cred->cr_label);
 cred->cr_label = ((void*)0);
}
