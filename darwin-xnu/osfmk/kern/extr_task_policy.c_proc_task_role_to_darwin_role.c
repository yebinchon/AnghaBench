
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PRIO_DARWIN_ROLE_DARWIN_BG ;
 int PRIO_DARWIN_ROLE_DEFAULT ;
 int PRIO_DARWIN_ROLE_NON_UI ;
 int PRIO_DARWIN_ROLE_TAL_LAUNCH ;
 int PRIO_DARWIN_ROLE_UI ;
 int PRIO_DARWIN_ROLE_UI_FOCAL ;
 int PRIO_DARWIN_ROLE_UI_NON_FOCAL ;
int
proc_task_role_to_darwin_role(int task_role)
{
 switch (task_role) {
  case 131:
   return PRIO_DARWIN_ROLE_UI_FOCAL;
  case 134:
   return PRIO_DARWIN_ROLE_UI_NON_FOCAL;
  case 130:
   return PRIO_DARWIN_ROLE_NON_UI;
  case 132:
   return PRIO_DARWIN_ROLE_UI;
  case 129:
   return PRIO_DARWIN_ROLE_TAL_LAUNCH;
  case 133:
   return PRIO_DARWIN_ROLE_DARWIN_BG;
  case 128:
  default:
   return PRIO_DARWIN_ROLE_DEFAULT;
 }
}
