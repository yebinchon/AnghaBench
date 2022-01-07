
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xSemaphoreHandle ;
typedef scalar_t__ uint32_t ;


 int DPORT_DATE_REG ;
 scalar_t__ DPORT_REG_READ (int ) ;
 int dport_test_result ;
 int exit_flag ;
 int vTaskDelete (int *) ;
 int xSemaphoreGive (int ) ;

__attribute__((used)) static void accessDPORT(void *pvParameters)
{
    xSemaphoreHandle *sema = (xSemaphoreHandle *) pvParameters;
    uint32_t dport_date = DPORT_REG_READ(DPORT_DATE_REG);

    dport_test_result = 1;


    while (exit_flag == 0) {
        if (dport_date != DPORT_REG_READ(DPORT_DATE_REG)) {
            dport_test_result = 0;
            break;
        }
    }

    xSemaphoreGive(*sema);
    vTaskDelete(((void*)0));
}
