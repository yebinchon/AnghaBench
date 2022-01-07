
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct netagent_session {int dummy; } ;
typedef int kern_ctl_ref ;
typedef int errno_t ;


 int netagent_delete_session (struct netagent_session*) ;

__attribute__((used)) static errno_t
netagent_ctl_disconnect(kern_ctl_ref kctlref, u_int32_t unit, void *unitinfo)
{
#pragma unused(kctlref, unit)
 struct netagent_session *session = (struct netagent_session *)unitinfo;
 if (session != ((void*)0)) {
  netagent_delete_session(session);
 }

 return (0);
}
