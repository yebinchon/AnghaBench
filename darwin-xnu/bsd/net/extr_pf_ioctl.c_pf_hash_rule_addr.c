
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u_int8_t ;
struct TYPE_9__ {int type; } ;
struct pf_rule_addr {TYPE_1__ addr; } ;
struct TYPE_11__ {int addr32; } ;
struct TYPE_10__ {int addr32; } ;
struct TYPE_12__ {TYPE_3__ mask; TYPE_2__ addr; } ;
struct TYPE_13__ {int rtlabelname; TYPE_4__ a; int tblname; int ifname; } ;
struct TYPE_16__ {TYPE_5__ v; int iflags; int type; } ;
struct TYPE_14__ {int op; int * port; } ;
struct TYPE_15__ {TYPE_6__ range; } ;
typedef int MD5_CTX ;
 int PF_MD5_UPD (struct pf_rule_addr*,int ) ;
 TYPE_8__ addr ;
 int neg ;
 TYPE_7__ xport ;

__attribute__((used)) static void
pf_hash_rule_addr(MD5_CTX *ctx, struct pf_rule_addr *pfr, u_int8_t proto)
{
 PF_MD5_UPD(pfr, addr.type);
 switch (pfr->addr.type) {
 case 130:
  PF_MD5_UPD(pfr, addr.v.ifname);
  PF_MD5_UPD(pfr, addr.iflags);
  break;
 case 128:
  PF_MD5_UPD(pfr, addr.v.tblname);
  break;
 case 131:

  PF_MD5_UPD(pfr, addr.v.a.addr.addr32);
  PF_MD5_UPD(pfr, addr.v.a.mask.addr32);
  break;
 case 129:
  PF_MD5_UPD(pfr, addr.v.rtlabelname);
  break;
 }

 switch (proto) {
 case 133:
 case 132:
  PF_MD5_UPD(pfr, xport.range.port[0]);
  PF_MD5_UPD(pfr, xport.range.port[1]);
  PF_MD5_UPD(pfr, xport.range.op);
  break;

 default:
  break;
 }

 PF_MD5_UPD(pfr, neg);
}
