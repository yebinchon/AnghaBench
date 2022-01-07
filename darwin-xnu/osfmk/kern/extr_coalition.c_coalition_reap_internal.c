
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int kern_return_t ;
typedef TYPE_1__* coalition_t ;
struct TYPE_7__ {size_t type; int termrequested; scalar_t__ active_count; int ref_count; int coalitions; scalar_t__ reaped; int terminated; } ;


 size_t COALITION_TYPE_MAX ;
 int KERN_DEFAULT_SET ;
 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 int KERN_TERMINATED ;
 scalar_t__ TRUE ;
 int assert (int) ;
 int coalition_count ;
 int coalition_lock (TYPE_1__*) ;
 int coalition_release (TYPE_1__*) ;
 int coalition_unlock (TYPE_1__*) ;
 int coalitions_list_lock ;
 TYPE_1__** init_coalition ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int remqueue (int *) ;

kern_return_t
coalition_reap_internal(coalition_t coal)
{
 assert(coal->type <= COALITION_TYPE_MAX);

 if (coal == init_coalition[coal->type]) {
  return KERN_DEFAULT_SET;
 }

 coalition_lock(coal);
 if (coal->reaped) {
  coalition_unlock(coal);
  return KERN_TERMINATED;
 }
 if (!coal->terminated) {
  coalition_unlock(coal);
  return KERN_FAILURE;
 }
 assert(coal->termrequested);
 if (coal->active_count > 0) {
  coalition_unlock(coal);
  return KERN_FAILURE;
 }

 coal->reaped = TRUE;


 assert(coal->ref_count > 2);

 coalition_unlock(coal);

 lck_mtx_lock(&coalitions_list_lock);
 coalition_count--;
 remqueue(&coal->coalitions);
 lck_mtx_unlock(&coalitions_list_lock);


 coalition_release(coal);
 coalition_release(coal);

 return KERN_SUCCESS;
}
