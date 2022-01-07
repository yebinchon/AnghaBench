
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cn_flags; char* cn_pnbuf; int cn_pnlen; } ;
struct nameidata {TYPE_1__ ni_cnd; } ;


 int FREE_ZONE (char*,int ,int ) ;
 int HASBUF ;
 int M_NAMEI ;

void
nameidone(struct nameidata *ndp)
{
 if (ndp->ni_cnd.cn_flags & HASBUF) {
  char *tmp = ndp->ni_cnd.cn_pnbuf;

  ndp->ni_cnd.cn_pnbuf = ((void*)0);
  ndp->ni_cnd.cn_flags &= ~HASBUF;
  FREE_ZONE(tmp, ndp->ni_cnd.cn_pnlen, M_NAMEI);
 }
}
