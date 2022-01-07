
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef TYPE_1__* proc_t ;
typedef int ipc_port_t ;
typedef int errno_t ;
struct TYPE_3__ {int task; } ;




 int POSIX_SPAWN_PROC_CLAMP_NONE ;







 int POSIX_SPAWN_PROC_TYPE_MASK ;
 int PRIO_DARWIN_ROLE_DEFAULT ;
 int TASK_APPTYPE_APP_DEFAULT ;
 int TASK_APPTYPE_APP_TAL ;
 int TASK_APPTYPE_DAEMON_ADAPTIVE ;
 int TASK_APPTYPE_DAEMON_BACKGROUND ;
 int TASK_APPTYPE_DAEMON_INTERACTIVE ;
 int TASK_APPTYPE_DAEMON_STANDARD ;
 int TASK_APPTYPE_NONE ;
 int TASK_UNSPECIFIED ;
 int THREAD_QOS_BACKGROUND ;
 int THREAD_QOS_MAINTENANCE ;
 int THREAD_QOS_UNSPECIFIED ;
 int THREAD_QOS_UTILITY ;
 int proc_darwin_role_to_task_role (int,int*) ;
 int proc_set_task_spawnpolicy (int ,int,int,int,int *,int) ;

__attribute__((used)) static errno_t
exec_handle_spawnattr_policy(proc_t p, int psa_apptype, uint64_t psa_qos_clamp, uint64_t psa_darwin_role,
                             ipc_port_t * portwatch_ports, int portwatch_count)
{
 int apptype = TASK_APPTYPE_NONE;
 int qos_clamp = THREAD_QOS_UNSPECIFIED;
 int role = TASK_UNSPECIFIED;

 if ((psa_apptype & POSIX_SPAWN_PROC_TYPE_MASK) != 0) {
  int proctype = psa_apptype & POSIX_SPAWN_PROC_TYPE_MASK;

  switch(proctype) {
   case 129:
    apptype = TASK_APPTYPE_DAEMON_INTERACTIVE;
    break;
   case 128:
    apptype = TASK_APPTYPE_DAEMON_STANDARD;
    break;
   case 131:
    apptype = TASK_APPTYPE_DAEMON_ADAPTIVE;
    break;
   case 130:
    apptype = TASK_APPTYPE_DAEMON_BACKGROUND;
    break;
   case 133:
    apptype = TASK_APPTYPE_APP_DEFAULT;
    break;

   case 132:
    apptype = TASK_APPTYPE_APP_TAL;
    break;

   default:
    apptype = TASK_APPTYPE_NONE;

    break;
  }
 }

 if (psa_qos_clamp != POSIX_SPAWN_PROC_CLAMP_NONE) {
  switch (psa_qos_clamp) {
   case 134:
    qos_clamp = THREAD_QOS_UTILITY;
    break;
   case 136:
    qos_clamp = THREAD_QOS_BACKGROUND;
    break;
   case 135:
    qos_clamp = THREAD_QOS_MAINTENANCE;
    break;
   default:
    qos_clamp = THREAD_QOS_UNSPECIFIED;

    break;
  }
 }

 if (psa_darwin_role != PRIO_DARWIN_ROLE_DEFAULT) {
  proc_darwin_role_to_task_role(psa_darwin_role, &role);
 }

 if (apptype != TASK_APPTYPE_NONE ||
     qos_clamp != THREAD_QOS_UNSPECIFIED ||
     role != TASK_UNSPECIFIED) {
  proc_set_task_spawnpolicy(p->task, apptype, qos_clamp, role,
                            portwatch_ports, portwatch_count);
 }

 return (0);
}
