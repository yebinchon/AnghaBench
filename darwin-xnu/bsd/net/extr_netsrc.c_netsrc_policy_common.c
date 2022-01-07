
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int sa; } ;
struct netsrc_req {TYPE_2__ nrq_dst; } ;
struct TYPE_3__ {int sa; } ;
struct netsrc_rep {int nrp_dstlabel; int nrp_label; int nrp_precedence; TYPE_1__ nrp_src; int nrp_dstprecedence; } ;
struct in6_addrpolicy {int label; int preced; } ;


 struct in6_addrpolicy* lookup_policy (int *) ;

__attribute__((used)) static void
netsrc_policy_common(struct netsrc_req *request, struct netsrc_rep *reply)
{

 struct in6_addrpolicy *policy = lookup_policy(&request->nrq_dst.sa);
 if (policy != ((void*)0) && policy->label != -1) {
  reply->nrp_dstlabel = policy->label;
  reply->nrp_dstprecedence = policy->preced;
 }


 policy = lookup_policy(&reply->nrp_src.sa);
 if (policy != ((void*)0) && policy->label != -1) {
  reply->nrp_label = policy->label;
  reply->nrp_precedence = policy->preced;
 }
}
