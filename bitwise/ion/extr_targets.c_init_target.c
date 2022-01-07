
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int size; } ;







 size_t TYPE_PTR ;
 char** arch_names ;
 int assert (int) ;
 int exit (int) ;
 TYPE_1__* ilp32_metrics ;
 TYPE_1__* lp64_metrics ;
 char** os_names ;
 int printf (char*,char*,char*) ;
 int target_arch ;
 int target_os ;
 int type_int ;
 int type_llong ;
 TYPE_1__* type_metrics ;
 int type_ssize ;
 void* type_uint ;
 void* type_uintptr ;
 void* type_ullong ;
 void* type_usize ;
 TYPE_1__* win32_x64_metrics ;
 TYPE_1__* win32_x86_metrics ;

void init_target(void) {
    type_metrics = ((void*)0);
    switch (target_os) {
    case 128:
        switch (target_arch) {
        case 131:
            type_metrics = win32_x86_metrics;
            break;
        case 132:
            type_metrics = win32_x64_metrics;
            break;
        default:
            break;
        }
        break;
    case 130:
        switch (target_arch) {
        case 131:
            type_metrics = ilp32_metrics;
            break;
        case 132:
            type_metrics = lp64_metrics;
            break;
        default:
            break;
        }
        break;
    case 129:
        switch (target_arch) {
        case 132:
            type_metrics = lp64_metrics;
            break;
        default:
            break;
        }
        break;
    default:
        break;
    }
    if (!type_metrics) {
        printf("Unsupported os/arch combination: %s/%s\n", os_names[target_os], arch_names[target_arch]);
        exit(1);
    }
    if (type_metrics[TYPE_PTR].size == 4) {
        type_uintptr = type_uint;
        type_usize = type_uint;
        type_ssize = type_int;
    } else {
        assert(type_metrics[TYPE_PTR].size == 8);
        type_uintptr = type_ullong;
        type_usize = type_ullong;
        type_ssize = type_llong;
    }
}
