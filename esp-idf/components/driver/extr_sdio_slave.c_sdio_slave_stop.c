
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ sdio_ioready1; } ;
struct TYPE_4__ {TYPE_1__ cfg_data1; } ;


 TYPE_2__ HINF ;
 int recv_stop () ;
 int send_stop () ;

void sdio_slave_stop(void)
{
    HINF.cfg_data1.sdio_ioready1 = 0;
    send_stop();
    recv_stop();
}
