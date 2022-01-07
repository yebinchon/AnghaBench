
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct klist {int dummy; } ;


 int SLIST_INIT (struct klist*) ;

void
klist_init(struct klist *list)
{
 SLIST_INIT(list);
}
