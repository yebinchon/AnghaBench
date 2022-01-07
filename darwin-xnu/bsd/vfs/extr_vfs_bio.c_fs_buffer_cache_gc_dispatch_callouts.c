
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int context; int (* callout ) (int,int ) ;} ;


 int FS_BUFFER_CACHE_GC_CALLOUTS_MAX_SIZE ;
 int buf_gc_callout ;
 TYPE_1__* fs_callouts ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int stub1 (int,int ) ;

__attribute__((used)) static void
fs_buffer_cache_gc_dispatch_callouts(int all)
{
 lck_mtx_lock(buf_gc_callout);
 for(int i = 0; i < FS_BUFFER_CACHE_GC_CALLOUTS_MAX_SIZE; i++) {
  if (fs_callouts[i].callout != ((void*)0)) {
   fs_callouts[i].callout(all, fs_callouts[i].context);
  }
 }
 lck_mtx_unlock(buf_gc_callout);
}
