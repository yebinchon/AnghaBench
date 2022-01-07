
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int control_unit ;


 int NECP_SESSION_NUM_PRIORITIES ;
 int NECP_SESSION_PRIORITY_DEFAULT ;
 int NECP_SESSION_PRIORITY_UNKNOWN ;

__attribute__((used)) static u_int32_t
necp_allocate_new_session_order(u_int32_t priority, u_int32_t control_unit)
{
 u_int32_t new_order = 0;


 if (priority == NECP_SESSION_PRIORITY_UNKNOWN || priority > NECP_SESSION_NUM_PRIORITIES) {
  priority = NECP_SESSION_PRIORITY_DEFAULT;
 }


 new_order = (control_unit) + ((priority - 1) * 1000);

 return (new_order);
}
