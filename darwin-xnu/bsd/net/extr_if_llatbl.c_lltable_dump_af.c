
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sysctl_req {int dummy; } ;
struct lltable {int llt_af; TYPE_1__* llt_ifp; scalar_t__ llt_dump_entry; } ;
typedef int llt_foreach_cb_t ;
struct TYPE_3__ {int if_flags; } ;


 int IFF_LOOPBACK ;
 int IF_AFDATA_RLOCK (TYPE_1__*,int ) ;
 int IF_AFDATA_RUNLOCK (TYPE_1__*,int ) ;
 int LLTABLE_LOCK_ASSERT () ;
 int lltable_foreach_lle (struct lltable*,int *,struct sysctl_req*) ;

__attribute__((used)) static int
lltable_dump_af(struct lltable *llt, struct sysctl_req *wr)
{
 int error;

 LLTABLE_LOCK_ASSERT();

 if (llt->llt_ifp->if_flags & IFF_LOOPBACK)
  return (0);
 error = 0;

 IF_AFDATA_RLOCK(llt->llt_ifp, llt->llt_af);
 error = lltable_foreach_lle(llt,
     (llt_foreach_cb_t *)llt->llt_dump_entry, wr);
 IF_AFDATA_RUNLOCK(llt->llt_ifp, llt->llt_af);

 return (error);
}
