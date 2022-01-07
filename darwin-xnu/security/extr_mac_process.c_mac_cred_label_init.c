
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int cr_label; } ;


 int mac_cred_label_alloc () ;

void
mac_cred_label_init(struct ucred *cred)
{
 cred->cr_label = mac_cred_label_alloc();
}
