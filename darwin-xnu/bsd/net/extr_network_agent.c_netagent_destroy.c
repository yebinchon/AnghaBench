
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netagent_session {int dummy; } ;
typedef scalar_t__ netagent_session_t ;


 void netagent_delete_session (struct netagent_session*) ;

void netagent_destroy(netagent_session_t session)
{
 return netagent_delete_session((struct netagent_session *)session);
}
