
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kern_return_t ;


 int KERN_SUCCESS ;
 int OSKextResetPgoCounters () ;
 int __pgo_hib_CountersEnd ;
 int __pgo_hib_CountersStart ;
 scalar_t__ kdp_pgo_reset_counters ;
 int memset (int *,int ,uintptr_t) ;

kern_return_t do_pgo_reset_counters()
{




    OSKextResetPgoCounters();
    kdp_pgo_reset_counters = 0;
    return KERN_SUCCESS;
}
