
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 uintptr_t VM_KERNEL_UNSLIDE_OR_PERM (void*) ;
 scalar_t__ __improbable (int ) ;
 int kdebug_enable ;

uintptr_t
unslide_for_kdebug(void* object) {
 if (__improbable(kdebug_enable))
  return VM_KERNEL_UNSLIDE_OR_PERM(object);
 else
  return 0;
}
