
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int socket_t ;
typedef int sflt_handle ;
typedef int errno_t ;


 int sflt_attach_internal (int ,int ) ;
 int socket_lock (int ,int) ;
 int socket_unlock (int ,int) ;

errno_t
sflt_attach(socket_t socket, sflt_handle handle)
{
 socket_lock(socket, 1);
 errno_t result = sflt_attach_internal(socket, handle);
 socket_unlock(socket, 1);
 return (result);
}
