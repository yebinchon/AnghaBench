
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_addr_wrap {int p; } ;


 int VERIFY (struct pf_addr_wrap*) ;
 int bzero (int *,int) ;

__attribute__((used)) static void
pf_addrwrap_setup(struct pf_addr_wrap *aw)
{
 VERIFY(aw);
 bzero(&aw->p, sizeof aw->p);
}
