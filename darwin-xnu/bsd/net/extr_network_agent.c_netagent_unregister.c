
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netagent_session {int dummy; } ;
typedef scalar_t__ netagent_session_t ;
typedef int errno_t ;


 int EINVAL ;
 int LOG_ERR ;
 int NETAGENTLOG0 (int ,char*) ;
 int netagent_unregister_session_wrapper (struct netagent_session*) ;

errno_t
netagent_unregister(netagent_session_t _session)
{
 struct netagent_session *session = (struct netagent_session *)_session;
 if (session == ((void*)0)) {
  NETAGENTLOG0(LOG_ERR, "Cannot unregister NULL session");
  return EINVAL;
 }

 netagent_unregister_session_wrapper(session);
 return 0;
}
