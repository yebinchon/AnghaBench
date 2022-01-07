
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netagent_session {void* event_context; int event_handler; } ;
typedef struct netagent_session* netagent_session_t ;
typedef int netagent_event_f ;


 struct netagent_session* netagent_create_session (int ) ;

netagent_session_t netagent_create(netagent_event_f event_handler, void *context)
{
 struct netagent_session *session = netagent_create_session(0);
 if (session == ((void*)0)) {
  return ((void*)0);
 }

 session->event_handler = event_handler;
 session->event_context = context;
 return session;
}
