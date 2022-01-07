
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct waitq_set {scalar_t__ wqset_id; } ;
typedef int boolean_t ;


 int FALSE ;
 int TRUE ;
 scalar_t__ waitqs_is_linked (struct waitq_set*) ;

boolean_t
waitq_set_should_lazy_init_link(struct waitq_set *wqset)
{
 if (waitqs_is_linked(wqset) || wqset->wqset_id == 0) {
  return FALSE;
 }
 return TRUE;
}
