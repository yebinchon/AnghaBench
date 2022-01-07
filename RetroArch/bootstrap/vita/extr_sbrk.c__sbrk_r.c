
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _reent {int _errno; } ;
struct SceKernelLwMutexWork {int dummy; } ;
typedef int ptrdiff_t ;


 int ENOMEM ;
 int _newlib_heap_base ;
 scalar_t__ _newlib_heap_cur ;
 scalar_t__ _newlib_heap_end ;
 scalar_t__ _newlib_sbrk_mutex ;
 scalar_t__ sceKernelLockLwMutex (struct SceKernelLwMutexWork*,int,int ) ;
 int sceKernelUnlockLwMutex (struct SceKernelLwMutexWork*,int) ;

void * _sbrk_r(struct _reent *reent, ptrdiff_t incr) {
 if (sceKernelLockLwMutex((struct SceKernelLwMutexWork*)_newlib_sbrk_mutex, 1, 0) < 0)
  goto fail;
 if (!_newlib_heap_base || _newlib_heap_cur + incr >= _newlib_heap_end) {
  sceKernelUnlockLwMutex((struct SceKernelLwMutexWork*)_newlib_sbrk_mutex, 1);
fail:
  reent->_errno = ENOMEM;
  return (void*)-1;
 }

 char *prev_heap_end = _newlib_heap_cur;
 _newlib_heap_cur += incr;

 sceKernelUnlockLwMutex((struct SceKernelLwMutexWork*)_newlib_sbrk_mutex, 1);
 return (void*) prev_heap_end;
}
