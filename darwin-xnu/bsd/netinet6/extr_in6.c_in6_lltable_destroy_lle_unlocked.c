
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct llentry {int dummy; } ;


 int FREE (struct llentry*,int ) ;
 int LLE_LOCK_DESTROY (struct llentry*) ;
 int LLE_REQ_DESTROY (struct llentry*) ;
 int M_LLTABLE ;

__attribute__((used)) static void
in6_lltable_destroy_lle_unlocked(struct llentry *lle)
{
 LLE_LOCK_DESTROY(lle);
 LLE_REQ_DESTROY(lle);
 FREE(lle, M_LLTABLE);
}
