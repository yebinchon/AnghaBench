
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xSemaphoreHandle ;
typedef scalar_t__ uint32_t ;


 int DPORT_DATE_REG ;
 scalar_t__ DPORT_REG_READ (int ) ;
 int apb_test_result ;
 int dport_test_result ;
 int exit_flag ;
 scalar_t__ pre_reading_apb_counter ;
 int vTaskDelete (int *) ;
 int xSemaphoreGive (int ) ;

__attribute__((used)) static void accessDPORT_pre_reading_apb(void *pvParameters)
{
    xSemaphoreHandle *sema = (xSemaphoreHandle *) pvParameters;
    uint32_t dport_date = DPORT_REG_READ(DPORT_DATE_REG);
    uint32_t dport_date_cur;
    dport_test_result = 1;
    pre_reading_apb_counter = 0;

    while (exit_flag == 0) {
        ++pre_reading_apb_counter;
        dport_date_cur = DPORT_REG_READ(DPORT_DATE_REG);
        if (dport_date != dport_date_cur) {
            apb_test_result = 0;
            break;
        }
    }

    xSemaphoreGive(*sema);
    vTaskDelete(((void*)0));
}
