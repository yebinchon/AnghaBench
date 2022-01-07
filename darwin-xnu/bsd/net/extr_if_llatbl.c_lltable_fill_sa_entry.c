
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct lltable {int (* llt_fill_sa_entry ) (struct llentry const*,struct sockaddr*) ;} ;
struct llentry {struct lltable* lle_tbl; } ;


 int stub1 (struct llentry const*,struct sockaddr*) ;

void
lltable_fill_sa_entry(const struct llentry *lle, struct sockaddr *sa)
{
 struct lltable *llt;

 llt = lle->lle_tbl;
 llt->llt_fill_sa_entry(lle, sa);
}
