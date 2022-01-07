
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gettod_r; int exit; int malloc_unlock; int malloc_lock; int lock_acquire; int lock_release; int lock_close; int lock_init; int sbrk_r; } ;


 int __libogc_exit ;
 int __libogc_gettod_r ;
 int __libogc_lock_acquire ;
 int __libogc_lock_close ;
 int __libogc_lock_init ;
 int __libogc_lock_release ;
 int __libogc_malloc_lock ;
 int __libogc_malloc_unlock ;
 int __libogc_sbrk_r ;
 TYPE_1__ __syscalls ;

__attribute__((used)) static void __init_syscall_array() {
 __syscalls.sbrk_r = __libogc_sbrk_r;
 __syscalls.lock_init = __libogc_lock_init;
 __syscalls.lock_close = __libogc_lock_close;
 __syscalls.lock_release = __libogc_lock_release;
 __syscalls.lock_acquire = __libogc_lock_acquire;
 __syscalls.malloc_lock = __libogc_malloc_lock;
 __syscalls.malloc_unlock = __libogc_malloc_unlock;
 __syscalls.exit = __libogc_exit;
 __syscalls.gettod_r = __libogc_gettod_r;

}
