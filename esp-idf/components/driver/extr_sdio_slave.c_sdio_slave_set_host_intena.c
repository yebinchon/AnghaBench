
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int sdio_slave_hostint_t ;
struct TYPE_3__ {int val; } ;
struct TYPE_4__ {TYPE_1__ slc0_func1_int_ena; } ;


 TYPE_2__ HOST ;

void sdio_slave_set_host_intena(sdio_slave_hostint_t ena)
{
    HOST.slc0_func1_int_ena.val = ena;
}
