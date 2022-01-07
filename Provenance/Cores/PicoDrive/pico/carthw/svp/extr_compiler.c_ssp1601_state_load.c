
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int iram_dirty; scalar_t__ iram_context; } ;
struct TYPE_4__ {TYPE_1__ drc; } ;


 TYPE_2__* ssp ;

__attribute__((used)) static void ssp1601_state_load(void)
{
 ssp->drc.iram_dirty = 1;
 ssp->drc.iram_context = 0;
}
