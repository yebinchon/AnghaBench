
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct necp_session {int control_unit; } ;


 int CTL_DATA_EOR ;
 int FALSE ;
 int ctl_enqueuedata (int *,int ,int *,size_t,int ) ;
 int * necp_kctlref ;

__attribute__((used)) static bool
necp_send_ctl_data(struct necp_session *session, u_int8_t *buffer, size_t buffer_size)
{
 int error;

 if (necp_kctlref == ((void*)0) || session == ((void*)0) || buffer == ((void*)0) || buffer_size == 0) {
  return (FALSE);
 }

 error = ctl_enqueuedata(necp_kctlref, session->control_unit, buffer, buffer_size, CTL_DATA_EOR);

 return (error == 0);
}
