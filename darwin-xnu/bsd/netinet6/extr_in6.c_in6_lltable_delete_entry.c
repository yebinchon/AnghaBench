
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lltable {int dummy; } ;
struct llentry {int la_flags; } ;


 int EVENTHANDLER_INVOKE (int *,int ,struct llentry*,int ) ;
 int LLENTRY_DELETED ;
 int LLE_DELETED ;
 int LOG_INFO ;
 int lle_event ;
 int llentry_free (struct llentry*) ;
 int log (int ,char*,struct llentry*) ;

__attribute__((used)) static void
in6_lltable_delete_entry(struct lltable *llt, struct llentry *lle)
{
#pragma unused(llt)
 lle->la_flags |= LLE_DELETED;
 EVENTHANDLER_INVOKE(((void*)0), lle_event, lle, LLENTRY_DELETED);



 llentry_free(lle);
}
