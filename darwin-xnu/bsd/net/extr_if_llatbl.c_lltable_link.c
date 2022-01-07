
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lltable {int dummy; } ;


 int LLTABLE_WLOCK () ;
 int LLTABLE_WUNLOCK () ;
 int SLIST_INSERT_HEAD (int *,struct lltable*,int ) ;
 int llt_link ;
 int lltables ;

void
lltable_link(struct lltable *llt)
{
 LLTABLE_WLOCK();
 SLIST_INSERT_HEAD(&lltables, llt, llt_link);
 LLTABLE_WUNLOCK();
}
