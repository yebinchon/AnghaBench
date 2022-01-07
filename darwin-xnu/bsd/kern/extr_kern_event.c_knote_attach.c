
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knote {int dummy; } ;
struct klist {int dummy; } ;


 int SLIST_EMPTY (struct klist*) ;
 int SLIST_INSERT_HEAD (struct klist*,struct knote*,int ) ;
 int kn_selnext ;

int
knote_attach(struct klist *list, struct knote *kn)
{
 int ret = SLIST_EMPTY(list);
 SLIST_INSERT_HEAD(list, kn, kn_selnext);
 return (ret);
}
