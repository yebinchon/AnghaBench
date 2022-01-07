
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flipc_port {int dummy; } ;
typedef int kern_return_t ;


 int FALSE ;
 int KERN_SUCCESS ;
 int TRUE ;
 int Z_CALLERACCT ;
 int Z_NOENCRYPT ;
 int flipc_port_zone ;
 int ipc_port_max ;
 int zinit (int,int,int,char*) ;
 int zone_change (int ,int ,int ) ;

kern_return_t
flipc_init(void)
{



    flipc_port_zone = zinit(sizeof(struct flipc_port),
                            (ipc_port_max>>4) * sizeof(struct flipc_port),
                            sizeof(struct flipc_port),
                            "flipc ports");

    zone_change(flipc_port_zone, Z_CALLERACCT, FALSE);
    zone_change(flipc_port_zone, Z_NOENCRYPT, TRUE);
    return KERN_SUCCESS;
}
