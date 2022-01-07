
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_pcb {int dummy; } ;
typedef int err_t ;


 int ERR_OK ;

err_t test_poll(void *arg, struct tcp_pcb *tpcb)
{
    return ERR_OK;
}
