
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int slc0_intvec; } ;
struct TYPE_4__ {TYPE_1__ intvec_tohost; } ;


 TYPE_2__ SLC ;

void sdio_slave_clear_host_int(uint8_t mask)
{
    SLC.intvec_tohost.slc0_intvec = mask;
}
