
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int SP; int HPFP; } ;
struct TYPE_5__ {TYPE_1__ bits; } ;
typedef TYPE_2__ arm_mvfr1_info_t ;
typedef int arm_mvfr0_info_t ;
struct TYPE_6__ {int neon; int neon_hpfp; } ;


 TYPE_3__ cpuid_mvfp_info ;

void
machine_do_mvfpid()
{
 cpuid_mvfp_info.neon = 1;
 cpuid_mvfp_info.neon_hpfp = 1;


}
