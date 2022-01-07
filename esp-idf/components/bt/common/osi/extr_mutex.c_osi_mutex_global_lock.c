
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gl_mutex ;
 int portMAX_DELAY ;
 int xSemaphoreTakeRecursive (int ,int ) ;

void osi_mutex_global_lock(void)
{
    xSemaphoreTakeRecursive(gl_mutex, portMAX_DELAY);
}
