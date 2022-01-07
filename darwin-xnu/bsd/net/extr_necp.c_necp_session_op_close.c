
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_context_t ;
struct necp_session {int dummy; } ;
struct fileglob {int * fg_data; } ;


 int ENOENT ;
 int necp_delete_session (struct necp_session*) ;
 int necp_policy_apply_all (struct necp_session*) ;
 int necp_policy_mark_all_for_deletion (struct necp_session*) ;

__attribute__((used)) static int
necp_session_op_close(struct fileglob *fg, vfs_context_t ctx)
{
#pragma unused(ctx)
 struct necp_session *session = (struct necp_session *)fg->fg_data;
 fg->fg_data = ((void*)0);

 if (session != ((void*)0)) {
  necp_policy_mark_all_for_deletion(session);
  necp_policy_apply_all(session);
  necp_delete_session(session);
  return (0);
 } else {
  return (ENOENT);
 }
}
