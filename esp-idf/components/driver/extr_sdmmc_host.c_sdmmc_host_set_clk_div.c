
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int div_factor_p; int div_factor_h; int div_factor_m; int phase_dout; int phase_din; scalar_t__ phase_core; } ;
struct TYPE_4__ {TYPE_1__ clock; } ;


 TYPE_2__ SDMMC ;
 int assert (int) ;
 int ets_delay_us (int) ;

__attribute__((used)) static void sdmmc_host_set_clk_div(int div)
{



    assert (div > 1 && div <= 16);
    int p = div - 1;
    int h = div / 2 - 1;

    SDMMC.clock.div_factor_p = p;
    SDMMC.clock.div_factor_h = h;
    SDMMC.clock.div_factor_m = p;

    SDMMC.clock.phase_dout = 4;
    SDMMC.clock.phase_din = 4;
    SDMMC.clock.phase_core = 0;

    ets_delay_us(10);
}
