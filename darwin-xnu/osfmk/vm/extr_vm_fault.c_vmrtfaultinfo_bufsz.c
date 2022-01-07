
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_rtfault_record_t ;


 int vmrtf_num_records ;

unsigned int vmrtfaultinfo_bufsz(void) {
 return (vmrtf_num_records * sizeof(vm_rtfault_record_t));
}
