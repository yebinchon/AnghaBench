
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sem; int select_ret; int tv; int errfds; int wrfds; int rdfds; int maxfds; } ;
typedef TYPE_1__ test_select_task_param_t ;


 int TEST_ASSERT_EQUAL (int ,int) ;
 int select (int ,int ,int ,int ,int ) ;
 int vTaskDelete (int *) ;
 int xSemaphoreGive (scalar_t__) ;

__attribute__((used)) static void select_task(void *task_param)
{
    const test_select_task_param_t *param = task_param;

    int s = select(param->maxfds, param->rdfds, param->wrfds, param->errfds, param->tv);
    TEST_ASSERT_EQUAL(param->select_ret, s);

    if (param->sem) {
        xSemaphoreGive(param->sem);
    }
    vTaskDelete(((void*)0));
}
