
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
typedef int boolean_t ;
struct TYPE_3__ {int t_flags; } ;


 int FALSE ;
 int TF_GPU_DENIED ;
 int TRUE ;

boolean_t task_is_gpu_denied(task_t task)
{

 return (task->t_flags & TF_GPU_DENIED) ? TRUE : FALSE;
}
