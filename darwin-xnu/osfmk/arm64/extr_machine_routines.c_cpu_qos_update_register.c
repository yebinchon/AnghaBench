
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * cpu_qos_update_t ;


 int * cpu_qos_cb_default ;
 int * cpu_qos_update ;

void cpu_qos_update_register(cpu_qos_update_t cpu_qos_cb) {
 if (cpu_qos_cb != ((void*)0)) {
  cpu_qos_update = cpu_qos_cb;
 } else {
  cpu_qos_update = cpu_qos_cb_default;
 }
}
