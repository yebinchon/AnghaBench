
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ err_t ;


 scalar_t__ ERR_OK ;
 int IP_ADDR_ANY ;
 int abort () ;
 int printf (char*) ;
 int tcp_accept (int *,int ) ;
 scalar_t__ tcp_bind (int *,int ,int) ;
 int * tcp_listen (int *) ;
 int * tcp_new () ;
 int test_accept ;
 int * test_pcb ;

void test_tcp_init(void)
{
    test_pcb = tcp_new();
    if (test_pcb != ((void*)0)) {
        err_t err;




        err = tcp_bind(test_pcb, IP_ADDR_ANY, 4242);
        if (err == ERR_OK) {
            test_pcb = tcp_listen(test_pcb);
            tcp_accept(test_pcb, test_accept);
        } else {
            printf("cannot bind test_pcb\n");
            abort();
        }
    } else {
        printf("cannot create test_pcb\n");
        abort();
    }
}
