
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void (* callout ) (int,void*) ;void* context; } ;


 int FS_BUFFER_CACHE_GC_CALLOUTS_MAX_SIZE ;
 int buf_gc_callout ;
 TYPE_1__* fs_callouts ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;

int
fs_buffer_cache_gc_unregister(void (* callout)(int, void *), void *context)
{
 lck_mtx_lock(buf_gc_callout);
 for (int i = 0; i < FS_BUFFER_CACHE_GC_CALLOUTS_MAX_SIZE; i++) {
  if (fs_callouts[i].callout == callout &&
      fs_callouts[i].context == context) {
   fs_callouts[i].callout = ((void*)0);
   fs_callouts[i].context = ((void*)0);
  }
 }
 lck_mtx_unlock(buf_gc_callout);
 return 0;
}
