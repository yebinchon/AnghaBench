
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int task_t ;
typedef scalar_t__ ipc_importance_task_t ;


 int FALSE ;
 scalar_t__ IIT_NULL ;
 scalar_t__ ipc_importance_for_task (int ,int ) ;
 int ipc_importance_task_release (scalar_t__) ;
 int ipc_importance_task_update_live_donor (scalar_t__) ;

__attribute__((used)) static void
task_importance_update_live_donor(task_t target_task)
{
}
