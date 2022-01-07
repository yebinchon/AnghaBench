
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lltable {struct lltable* lle_head; } ;


 int FREE (struct lltable*,int ) ;
 int M_LLTABLE ;

__attribute__((used)) static void
htable_free_tbl(struct lltable *llt)
{

 FREE(llt->lle_head, M_LLTABLE);
 FREE(llt, M_LLTABLE);
}
