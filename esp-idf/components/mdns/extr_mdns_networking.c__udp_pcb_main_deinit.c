
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * _pcb_main ;
 int udp_disconnect (int *) ;
 int udp_recv (int *,int *,int *) ;
 int udp_remove (int *) ;

__attribute__((used)) static void _udp_pcb_main_deinit(void)
{
    if(_pcb_main){
        udp_recv(_pcb_main, ((void*)0), ((void*)0));
        udp_disconnect(_pcb_main);
        udp_remove(_pcb_main);
        _pcb_main = ((void*)0);
    }
}
