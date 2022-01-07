
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kern_return_t ;
typedef int host_priv_t ;
typedef int UNDServerRef ;


 int host_get_user_notification_port (int ,int *) ;

kern_return_t
host_get_UNDServer(
 host_priv_t host_priv,
 UNDServerRef *serverp)
{
 return (host_get_user_notification_port(host_priv, serverp));
}
