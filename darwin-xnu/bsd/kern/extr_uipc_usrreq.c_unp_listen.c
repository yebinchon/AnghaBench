
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unpcb {int unp_flags; int unp_peercred; } ;
typedef int proc_t ;
typedef int kauth_cred_t ;


 int UNP_HAVEPCCACHED ;
 int cru2x (int ,int *) ;
 int kauth_cred_proc_ref (int ) ;
 int kauth_cred_unref (int *) ;

__attribute__((used)) static int
unp_listen(struct unpcb *unp, proc_t p)
{
 kauth_cred_t safecred = kauth_cred_proc_ref(p);
 cru2x(safecred, &unp->unp_peercred);
 kauth_cred_unref(&safecred);
 unp->unp_flags |= UNP_HAVEPCCACHED;
 return (0);
}
