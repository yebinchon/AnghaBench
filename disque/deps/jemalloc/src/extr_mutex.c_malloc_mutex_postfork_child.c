
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int malloc_mutex_t ;


 int abort () ;
 scalar_t__ malloc_mutex_init (int *) ;
 int malloc_mutex_unlock (int *) ;
 int malloc_printf (char*) ;
 scalar_t__ opt_abort ;

void
malloc_mutex_postfork_child(malloc_mutex_t *mutex)
{




 if (malloc_mutex_init(mutex)) {
  malloc_printf("<jemalloc>: Error re-initializing mutex in "
      "child\n");
  if (opt_abort)
   abort();
 }

}
