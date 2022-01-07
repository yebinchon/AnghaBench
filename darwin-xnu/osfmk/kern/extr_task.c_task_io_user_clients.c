
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
typedef int queue_head_t ;
struct TYPE_3__ {int io_user_clients; } ;



queue_head_t *
task_io_user_clients(task_t task)
{
    return (&task->io_user_clients);
}
