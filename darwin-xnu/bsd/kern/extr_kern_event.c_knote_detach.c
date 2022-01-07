
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knote {int dummy; } ;
struct klist {int dummy; } ;


 int SLIST_EMPTY (struct klist*) ;
 int SLIST_REMOVE (struct klist*,struct knote*,int ,int ) ;
 int kn_selnext ;
 int knote ;

int
knote_detach(struct klist *list, struct knote *kn)
{
 SLIST_REMOVE(list, kn, knote, kn_selnext);
 return (SLIST_EMPTY(list));
}
