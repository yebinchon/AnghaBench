
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct netagent_session {int dummy; } ;
typedef int kern_ctl_ref ;
typedef int errno_t ;


 int EINVAL ;
 int ENOPROTOOPT ;
 int LOG_DEBUG ;
 int LOG_ERR ;
 int NETAGENTLOG0 (int ,char*) ;





 int netagent_handle_assign_nexus_setopt (struct netagent_session*,void*,size_t) ;
 int netagent_handle_register_setopt (struct netagent_session*,void*,size_t) ;
 int netagent_handle_unregister_setopt (struct netagent_session*,void*,size_t) ;
 int netagent_handle_update_setopt (struct netagent_session*,void*,size_t) ;
 int netagent_handle_use_count_setopt (struct netagent_session*,void*,size_t) ;

__attribute__((used)) static errno_t
netagent_ctl_setopt(kern_ctl_ref kctlref, u_int32_t unit, void *unitinfo, int opt,
     void *data, size_t len)
{
#pragma unused(kctlref, unit)
 struct netagent_session *session = (struct netagent_session *)unitinfo;
 errno_t error;

 if (session == ((void*)0)) {
  NETAGENTLOG0(LOG_ERR, "Received a NULL session");
  error = EINVAL;
  goto done;
 }

 switch (opt) {
  case 131: {
   NETAGENTLOG0(LOG_DEBUG, "Request for registration");
   error = netagent_handle_register_setopt(session, data, len);
  }
  break;
  case 129: {
   NETAGENTLOG0(LOG_DEBUG, "Request for update");
   error = netagent_handle_update_setopt(session, data, len);
  }
  break;
  case 130: {
   NETAGENTLOG0(LOG_DEBUG, "Request for unregistration");
   error = netagent_handle_unregister_setopt(session, data, len);
  }
  break;
  case 132: {
   NETAGENTLOG0(LOG_DEBUG, "Request for assigning nexus");
   error = netagent_handle_assign_nexus_setopt(session, data, len);
  }
  break;
  case 128: {
   NETAGENTLOG0(LOG_DEBUG, "Request to set use count");
   error = netagent_handle_use_count_setopt(session, data, len);
  }
  break;
  default:
   NETAGENTLOG0(LOG_ERR, "Received unknown option");
   error = ENOPROTOOPT;
  break;
 }

done:
 return (error);
}
