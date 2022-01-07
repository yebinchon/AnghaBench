
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_filter_entry {struct socket_filter_entry* sfe_next_oncleanup; int sfe_refcount; } ;
typedef int SInt32 ;


 int OSDecrementAtomic (int *) ;
 int kernel_thread_start (int ,int *,int **) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int panic (char*,int) ;
 int sflt_cleanup_thread ;
 struct socket_filter_entry* sock_filter_cleanup_entries ;
 int sock_filter_cleanup_lock ;
 int * sock_filter_cleanup_thread ;
 int wakeup (struct socket_filter_entry**) ;

__attribute__((used)) static void
sflt_entry_release(struct socket_filter_entry *entry)
{
 SInt32 old = OSDecrementAtomic(&entry->sfe_refcount);
 if (old == 1) {



  lck_mtx_lock(sock_filter_cleanup_lock);


  entry->sfe_next_oncleanup = sock_filter_cleanup_entries;
  sock_filter_cleanup_entries = entry;


  if (entry->sfe_next_oncleanup == ((void*)0)) {
   if (sock_filter_cleanup_thread == ((void*)0)) {

    kernel_thread_start(sflt_cleanup_thread,
        ((void*)0), &sock_filter_cleanup_thread);
   } else {

    wakeup(&sock_filter_cleanup_entries);
   }
  }


  lck_mtx_unlock(sock_filter_cleanup_lock);
 } else if (old <= 0) {
  panic("sflt_entry_release - sfe_refcount (%d) <= 0\n",
      (int)old);

 }
}
