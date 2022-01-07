
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wait_result_t ;
typedef scalar_t__ vm_offset_t ;
struct image_params {char* ip_strings; char* ip_vdata; char* ip_strendp; int ip_argspace; int ip_strspace; } ;
typedef scalar_t__ kern_return_t ;


 int EINTR ;
 int ENOMEM ;
 scalar_t__ KERN_SUCCESS ;
 int NCARGS ;
 int PAGE_SIZE ;
 scalar_t__ THREAD_AWAKENED ;
 int assert (int) ;
 scalar_t__* execargs_cache ;
 int execargs_cache_size ;
 scalar_t__ execargs_free_count ;
 int execargs_lock_lock () ;
 scalar_t__ execargs_lock_sleep () ;
 int execargs_lock_unlock () ;
 scalar_t__ execargs_purgeable_allocate (char**) ;
 scalar_t__ execargs_purgeable_reference (char*) ;
 int execargs_waiters ;

__attribute__((used)) static int
execargs_alloc(struct image_params *imgp)
{
 kern_return_t kret;
 wait_result_t res;
 int i, cache_index = -1;

 execargs_lock_lock();

 while (execargs_free_count == 0) {
  execargs_waiters++;
  res = execargs_lock_sleep();
  execargs_waiters--;
  if (res != THREAD_AWAKENED) {
   execargs_lock_unlock();
   return (EINTR);
  }
 }

 execargs_free_count--;

 for (i = 0; i < execargs_cache_size; i++) {
  vm_offset_t element = execargs_cache[i];
  if (element) {
   cache_index = i;
   imgp->ip_strings = (char *)(execargs_cache[i]);
   execargs_cache[i] = 0;
   break;
  }
 }

 assert(execargs_free_count >= 0);

 execargs_lock_unlock();

 if (cache_index == -1) {
  kret = execargs_purgeable_allocate(&imgp->ip_strings);
 }
 else
  kret = execargs_purgeable_reference(imgp->ip_strings);

 assert(kret == KERN_SUCCESS);
 if (kret != KERN_SUCCESS) {
  return (ENOMEM);
 }


 imgp->ip_vdata = imgp->ip_strings + ( NCARGS + PAGE_SIZE );
 imgp->ip_strendp = imgp->ip_strings;
 imgp->ip_argspace = NCARGS;
 imgp->ip_strspace = ( NCARGS + PAGE_SIZE );

 return (0);
}
