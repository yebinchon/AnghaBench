
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ tx_done; } ;
struct TYPE_4__ {int stop; } ;
struct TYPE_6__ {TYPE_2__ slc0_int_ena; TYPE_1__ slc0_tx_link; } ;


 TYPE_3__ SLC ;

__attribute__((used)) static void recv_stop(void)
{
    SLC.slc0_tx_link.stop = 1;
    SLC.slc0_int_ena.tx_done = 0;
}
