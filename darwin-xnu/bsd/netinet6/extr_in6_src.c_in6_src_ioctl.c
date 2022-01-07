
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_8__ {int * s6_addr32; } ;
struct TYPE_7__ {TYPE_4__ sin6_addr; } ;
struct TYPE_5__ {int * s6_addr32; } ;
struct TYPE_6__ {TYPE_1__ sin6_addr; } ;
struct in6_addrpolicy {scalar_t__ label; scalar_t__ use; TYPE_3__ addrmask; TYPE_2__ addr; } ;
typedef int ent0 ;
typedef int caddr_t ;


 scalar_t__ ADDR_LABEL_NOTAPP ;
 int EINVAL ;
 int ENOTSUP ;
 int EOPNOTSUPP ;


 int add_addrsel_policyent (struct in6_addrpolicy*) ;
 int bcopy (int ,struct in6_addrpolicy*,int) ;
 int delete_addrsel_policyent (struct in6_addrpolicy*) ;
 scalar_t__ in6_mask2len (TYPE_4__*,int *) ;

int
in6_src_ioctl(u_long cmd, caddr_t data)
{
 int i;
 struct in6_addrpolicy ent0;

 if (cmd != 129 && cmd != 128)
  return (EOPNOTSUPP);

 bcopy(data, &ent0, sizeof (ent0));

 if (ent0.label == ADDR_LABEL_NOTAPP)
  return (EINVAL);

 if (in6_mask2len(&ent0.addrmask.sin6_addr, ((void*)0)) < 0)
  return (EINVAL);

 for (i = 0; i < 4; i++) {
  ent0.addr.sin6_addr.s6_addr32[i] &=
   ent0.addrmask.sin6_addr.s6_addr32[i];
 }
 ent0.use = 0;

 switch (cmd) {
 case 129:



  return (ENOTSUP);

 case 128:



  return (ENOTSUP);

 }

 return (0);
}
