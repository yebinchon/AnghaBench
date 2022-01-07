
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct llentry {int dummy; } ;


 int LLE_WUNLOCK (struct llentry*) ;
 int in_lltable_destroy_lle_unlocked (struct llentry*) ;

__attribute__((used)) static void
in_lltable_destroy_lle(struct llentry *lle)
{
 LLE_WUNLOCK(lle);
 in_lltable_destroy_lle_unlocked(lle);
}
