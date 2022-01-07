
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lck_spin_unlock (int *) ;
 int vm_rtfr_slock ;

__attribute__((used)) static void vm_rtfrecord_unlock(void) {
 lck_spin_unlock(&vm_rtfr_slock);
}
