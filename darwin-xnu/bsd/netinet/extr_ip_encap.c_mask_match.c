
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
struct sockaddr_storage {int ss_len; scalar_t__ ss_family; } ;
struct sockaddr {int sa_len; scalar_t__ sa_family; } ;
struct TYPE_2__ {int ss_len; } ;
struct encaptab {scalar_t__ af; TYPE_1__ dst; TYPE_1__ src; int dstmask; int srcmask; } ;
typedef int s ;
typedef int d ;


 scalar_t__ bcmp (struct sockaddr_storage*,TYPE_1__*,int) ;

__attribute__((used)) static int
mask_match(const struct encaptab *ep, const struct sockaddr *sp,
 const struct sockaddr *dp)
{
 struct sockaddr_storage s;
 struct sockaddr_storage d;
 int i;
 const u_int8_t *p, *q;
 u_int8_t *r;
 int matchlen;

 if (sp->sa_len > sizeof(s) || dp->sa_len > sizeof(d))
  return 0;
 if (sp->sa_family != ep->af || dp->sa_family != ep->af)
  return 0;
 if (sp->sa_len != ep->src.ss_len || dp->sa_len != ep->dst.ss_len)
  return 0;

 matchlen = 0;

 p = (const u_int8_t *)sp;
 q = (const u_int8_t *)&ep->srcmask;
 r = (u_int8_t *)&s;
 for (i = 0 ; i < sp->sa_len; i++) {
  r[i] = p[i] & q[i];

  matchlen += (q[i] ? 8 : 0);
 }

 p = (const u_int8_t *)dp;
 q = (const u_int8_t *)&ep->dstmask;
 r = (u_int8_t *)&d;
 for (i = 0 ; i < dp->sa_len; i++) {
  r[i] = p[i] & q[i];

  matchlen += (q[i] ? 8 : 0);
 }


 s.ss_len = sp->sa_len;
 s.ss_family = sp->sa_family;
 d.ss_len = dp->sa_len;
 d.ss_family = dp->sa_family;

 if (bcmp(&s, &ep->src, ep->src.ss_len) == 0 &&
     bcmp(&d, &ep->dst, ep->dst.ss_len) == 0) {
  return matchlen;
 } else
  return 0;
}
