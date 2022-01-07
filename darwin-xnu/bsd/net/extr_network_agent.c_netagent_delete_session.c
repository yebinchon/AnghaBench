
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netagent_session {int dummy; } ;


 int FREE (struct netagent_session*,int ) ;
 int M_NETAGENT ;
 int netagent_unregister_session_wrapper (struct netagent_session*) ;

__attribute__((used)) static void
netagent_delete_session(struct netagent_session *session)
{
 if (session != ((void*)0)) {
  netagent_unregister_session_wrapper(session);
  FREE(session, M_NETAGENT);
 }
}
