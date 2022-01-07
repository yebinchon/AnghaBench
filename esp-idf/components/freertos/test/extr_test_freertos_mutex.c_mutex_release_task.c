
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SemaphoreHandle_t ;


 int TEST_FAIL_MESSAGE (char*) ;
 int xSemaphoreGive (int ) ;

__attribute__((used)) static void mutex_release_task(void* arg)
{
    SemaphoreHandle_t mutex = (SemaphoreHandle_t) arg;
    xSemaphoreGive(mutex);
    TEST_FAIL_MESSAGE("should not be reached");
}
