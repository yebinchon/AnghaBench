
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct necp_session {int last_policy_id; } ;
typedef scalar_t__ necp_policy_id ;


 int LOG_ERR ;
 int NECPLOG0 (int ,char*) ;

__attribute__((used)) static necp_policy_id
necp_policy_get_new_id(struct necp_session *session)
{
 session->last_policy_id++;
 if (session->last_policy_id < 1) {
  session->last_policy_id = 1;
 }

 necp_policy_id newid = session->last_policy_id;

 if (newid == 0) {
  NECPLOG0(LOG_ERR, "Allocate policy id failed.\n");
  return (0);
 }

 return (newid);
}
