
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dtm_count; int dtm_name; } ;
typedef TYPE_1__ dtrace_meta_t ;
typedef scalar_t__ dtrace_meta_provider_id_t ;


 int EBUSY ;
 int dtrace_lock ;
 int dtrace_meta_lock ;
 TYPE_1__* dtrace_meta_pid ;
 int dtrace_strunref (int ) ;
 int kmem_free (TYPE_1__*,int) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int panic (char*,void*) ;

int
dtrace_meta_unregister(dtrace_meta_provider_id_t id)
{
 dtrace_meta_t **pp, *old = (dtrace_meta_t *)id;

 lck_mtx_lock(&dtrace_meta_lock);
 lck_mtx_lock(&dtrace_lock);

 if (old == dtrace_meta_pid) {
  pp = &dtrace_meta_pid;
 } else {
  panic("attempt to unregister non-existent "
      "dtrace meta-provider %p\n", (void *)old);
 }

 if (old->dtm_count != 0) {
  lck_mtx_unlock(&dtrace_lock);
  lck_mtx_unlock(&dtrace_meta_lock);
  return (EBUSY);
 }

 *pp = ((void*)0);

 dtrace_strunref(old->dtm_name);

 lck_mtx_unlock(&dtrace_lock);
 lck_mtx_unlock(&dtrace_meta_lock);

 kmem_free(old, sizeof (dtrace_meta_t));

 return (0);
}
