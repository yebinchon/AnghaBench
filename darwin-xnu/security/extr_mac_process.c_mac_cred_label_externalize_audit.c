
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct proc {int dummy; } ;
struct mac {int m_buflen; int m_string; } ;
typedef TYPE_1__* kauth_cred_t ;
struct TYPE_4__ {int cr_label; } ;


 int MAC_EXTERNALIZE_AUDIT (int ,int ,int ,int ) ;
 int cred ;
 TYPE_1__* kauth_cred_proc_ref (struct proc*) ;
 int kauth_cred_unref (TYPE_1__**) ;

int
mac_cred_label_externalize_audit(struct proc *p, struct mac *mac)
{
 kauth_cred_t cr;
 int error;

 cr = kauth_cred_proc_ref(p);

 error = MAC_EXTERNALIZE_AUDIT(cred, cr->cr_label,
     mac->m_string, mac->m_buflen);

 kauth_cred_unref(&cr);
 return (error);
}
