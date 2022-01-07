
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_pcb {int dummy; } ;
struct pbuf {int dummy; } ;
typedef int err_t ;


 int ERR_OK ;

err_t test_recv(void *arg, struct tcp_pcb *tpcb, struct pbuf *p, err_t err)
{
    return ERR_OK;
}
