
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
typedef int sflt_handle ;
typedef int sflt_event_t ;


 int sflt_notify_internal (struct socket*,int ,int *,int ) ;

__attribute__((used)) static void
sflt_notify_after_register(struct socket *so, sflt_event_t event,
    sflt_handle handle)
{
 sflt_notify_internal(so, event, ((void*)0), handle);
}
