
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ kVMPressureNormal ;
 scalar_t__ memorystatus_vm_pressure_level ;

int
memorystatus_get_pressure_status_kdp() {
 return (kVMPressureNormal != memorystatus_vm_pressure_level) ? 1 : 0;
}
