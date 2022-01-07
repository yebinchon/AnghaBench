
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* mach_timebase_info_t ;
struct TYPE_6__ {scalar_t__ numer; scalar_t__ denom; } ;
typedef TYPE_2__ mach_timebase_info_data_t ;
typedef scalar_t__ kern_return_t ;
struct TYPE_5__ {scalar_t__ numer; scalar_t__ denom; } ;


 scalar_t__ KERN_SUCCESS ;
 scalar_t__ mach_timebase_info_trap (TYPE_2__*) ;

kern_return_t
mach_timebase_info(mach_timebase_info_t info){
    static mach_timebase_info_data_t cached_info;





    if (cached_info.numer == 0 || cached_info.denom == 0){
        kern_return_t kr = mach_timebase_info_trap(&cached_info);
        if (kr != KERN_SUCCESS) return kr;
    }

 info->numer = cached_info.numer;
 info->denom = cached_info.denom;

    return KERN_SUCCESS;
}
