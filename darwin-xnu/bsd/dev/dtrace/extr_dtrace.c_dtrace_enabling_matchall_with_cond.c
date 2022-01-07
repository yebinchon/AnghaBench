
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int dtrace_match_cond_t ;
struct TYPE_4__ {struct TYPE_4__* dten_next; } ;
typedef TYPE_1__ dtrace_enabling_t ;


 int cpu_lock ;
 int dtrace_enabling_match (TYPE_1__*,int *,int *) ;
 int dtrace_lock ;
 TYPE_1__* dtrace_retained ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;

__attribute__((used)) static void
dtrace_enabling_matchall_with_cond(dtrace_match_cond_t *cond)
{
 dtrace_enabling_t *enab;

 lck_mtx_lock(&cpu_lock);
 lck_mtx_lock(&dtrace_lock);
 for (enab = dtrace_retained; enab != ((void*)0); enab = enab->dten_next) {
  (void) dtrace_enabling_match(enab, ((void*)0), cond);
 }

 lck_mtx_unlock(&dtrace_lock);
 lck_mtx_unlock(&cpu_lock);

}
