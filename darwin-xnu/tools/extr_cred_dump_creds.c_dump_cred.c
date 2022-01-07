
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int at_port; int* at_addr; } ;
struct TYPE_6__ {int am_success; int am_failure; } ;
struct TYPE_8__ {int ai_auid; int ai_asid; TYPE_2__ ai_termid; TYPE_1__ ai_mask; } ;
struct TYPE_9__ {int cr_uid; int cr_ruid; int cr_svuid; int cr_ngroups; int* cr_groups; int cr_rgid; int cr_svgid; int cr_gmuid; int cr_flags; int cr_label; TYPE_3__ cr_audit; int cr_ref; int credp; } ;
typedef TYPE_4__ debug_ucred ;


 int printf (char*,...) ;

void dump_cred( debug_ucred * credp )
{
 int i;
 printf("%p ", credp->credp);
 printf("%lu ", credp->cr_ref);
 printf("%d ", credp->cr_uid);
 printf("%d ", credp->cr_ruid);
 printf("%d ", credp->cr_svuid);
 printf("%d g[", credp->cr_ngroups);
 for (i = 0; i < credp->cr_ngroups; i++) {
  printf("%d", credp->cr_groups[i]);
  if ( (i + 1) < credp->cr_ngroups ) {
   printf(" ");
  }
 }
 printf("] %d ", credp->cr_rgid);
 printf("%d ", credp->cr_svgid);
 printf("%d ", credp->cr_gmuid);
 printf("a[%d ", credp->cr_audit.ai_auid);
 printf("%d ", credp->cr_audit.ai_mask.am_success);
 printf("%d ", credp->cr_audit.ai_mask.am_failure);
 printf("%d ", credp->cr_audit.ai_termid.at_port);
 printf("%d ", credp->cr_audit.ai_termid.at_addr[0]);
 printf("%d ", credp->cr_audit.ai_asid);
 printf("] ");
 printf("%p ", credp->cr_label);
 printf("0x%08x \n", credp->cr_flags);
 printf("\n");
 return;
}
