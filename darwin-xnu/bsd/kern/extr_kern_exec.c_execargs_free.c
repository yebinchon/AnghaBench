
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
struct image_params {int * ip_strings; } ;
typedef scalar_t__ kern_return_t ;
typedef scalar_t__ boolean_t ;


 int EINVAL ;
 scalar_t__ FALSE ;
 scalar_t__ KERN_SUCCESS ;
 scalar_t__ TRUE ;
 int assert (int ) ;
 scalar_t__* execargs_cache ;
 int execargs_cache_size ;
 int execargs_free_count ;
 int execargs_lock_lock () ;
 int execargs_lock_unlock () ;
 scalar_t__ execargs_purgeable_volatilize (int *) ;
 scalar_t__ execargs_waiters ;
 int execargs_wakeup_waiters () ;

__attribute__((used)) static int
execargs_free(struct image_params *imgp)
{
 kern_return_t kret;
 int i;
 boolean_t needs_wakeup = FALSE;

 kret = execargs_purgeable_volatilize(imgp->ip_strings);

 execargs_lock_lock();
 execargs_free_count++;

 for (i = 0; i < execargs_cache_size; i++) {
  vm_offset_t element = execargs_cache[i];
  if (element == 0) {
   execargs_cache[i] = (vm_offset_t) imgp->ip_strings;
   imgp->ip_strings = ((void*)0);
   break;
  }
 }

 assert(imgp->ip_strings == ((void*)0));

 if (execargs_waiters > 0)
  needs_wakeup = TRUE;

 execargs_lock_unlock();

 if (needs_wakeup == TRUE)
  execargs_wakeup_waiters();

 return ((kret == KERN_SUCCESS ? 0 : EINVAL));
}
