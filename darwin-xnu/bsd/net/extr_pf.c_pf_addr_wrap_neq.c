
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int mask; int addr; } ;
struct TYPE_8__ {int rtlabel; TYPE_1__ a; } ;
struct TYPE_7__ {int tbl; TYPE_2__* dyn; } ;
struct pf_addr_wrap {int type; TYPE_4__ v; TYPE_3__ p; } ;
struct TYPE_6__ {int pfid_kt; } ;
 int PF_ANEQ (int *,int *,int ) ;
 int printf (char*,int) ;

__attribute__((used)) static int
pf_addr_wrap_neq(struct pf_addr_wrap *aw1, struct pf_addr_wrap *aw2)
{
 if (aw1->type != aw2->type)
  return (1);
 switch (aw1->type) {
 case 134:
 case 131:
  if (PF_ANEQ(&aw1->v.a.addr, &aw2->v.a.addr, 0))
   return (1);
  if (PF_ANEQ(&aw1->v.a.mask, &aw2->v.a.mask, 0))
   return (1);
  return (0);
 case 133:
  return (aw1->p.dyn == ((void*)0) || aw2->p.dyn == ((void*)0) ||
      aw1->p.dyn->pfid_kt != aw2->p.dyn->pfid_kt);
 case 132:
 case 128:
  return (0);
 case 129:
  return (aw1->p.tbl != aw2->p.tbl);
 case 130:
  return (aw1->v.rtlabel != aw2->v.rtlabel);
 default:
  printf("invalid address type: %d\n", aw1->type);
  return (1);
 }
}
