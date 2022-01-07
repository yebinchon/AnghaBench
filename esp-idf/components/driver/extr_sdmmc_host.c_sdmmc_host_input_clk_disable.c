
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ val; } ;
struct TYPE_4__ {TYPE_1__ clock; } ;


 TYPE_2__ SDMMC ;

__attribute__((used)) static void sdmmc_host_input_clk_disable(void)
{
    SDMMC.clock.val = 0;
}
