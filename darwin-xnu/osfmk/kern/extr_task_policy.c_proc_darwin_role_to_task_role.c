
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int integer_t ;


 int EINVAL ;







 int TASK_BACKGROUND_APPLICATION ;
 int TASK_DARWINBG_APPLICATION ;
 int TASK_DEFAULT_APPLICATION ;
 int TASK_FOREGROUND_APPLICATION ;
 int TASK_NONUI_APPLICATION ;
 int TASK_THROTTLE_APPLICATION ;
 int TASK_UNSPECIFIED ;

int
proc_darwin_role_to_task_role(int darwin_role, int* task_role)
{
 integer_t role = TASK_UNSPECIFIED;

 switch (darwin_role) {
  case 133:
   role = TASK_UNSPECIFIED;
   break;
  case 129:
   role = TASK_FOREGROUND_APPLICATION;
   break;
  case 130:
   role = TASK_DEFAULT_APPLICATION;
   break;
  case 132:
   role = TASK_NONUI_APPLICATION;
   break;
  case 128:
   role = TASK_BACKGROUND_APPLICATION;
   break;
  case 131:
   role = TASK_THROTTLE_APPLICATION;
   break;
  case 134:
   role = TASK_DARWINBG_APPLICATION;
   break;
  default:
   return EINVAL;
 }

 *task_role = role;

 return 0;
}
