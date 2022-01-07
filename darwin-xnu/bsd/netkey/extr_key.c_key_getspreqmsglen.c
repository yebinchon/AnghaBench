
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
struct secpolicy {scalar_t__ policy; struct ipsecrequest* req; } ;
struct sadb_x_policy {int dummy; } ;
struct sadb_x_ipsecrequest {int dummy; } ;
struct TYPE_4__ {int ss_len; } ;
struct TYPE_5__ {int ss_len; } ;
struct TYPE_6__ {TYPE_1__ dst; TYPE_2__ src; } ;
struct ipsecrequest {TYPE_3__ saidx; struct ipsecrequest* next; } ;


 scalar_t__ IPSEC_POLICY_IPSEC ;
 scalar_t__ PFKEY_ALIGN8 (int) ;

__attribute__((used)) static u_int
key_getspreqmsglen(
       struct secpolicy *sp)
{
 u_int tlen;

 tlen = sizeof(struct sadb_x_policy);


 if (sp->policy != IPSEC_POLICY_IPSEC)
  return tlen;


    {
  struct ipsecrequest *isr;
  int len;

  for (isr = sp->req; isr != ((void*)0); isr = isr->next) {
   len = sizeof(struct sadb_x_ipsecrequest)
   + isr->saidx.src.ss_len
   + isr->saidx.dst.ss_len;

   tlen += PFKEY_ALIGN8(len);
  }
    }

 return tlen;
}
