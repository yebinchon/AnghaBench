
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xSemaphoreHandle ;
typedef scalar_t__ uint32_t ;


 int DPORT_DATE_REG ;
 scalar_t__ DPORT_REG_READ (int ) ;
 int DPORT_STALL_OTHER_CPU_END () ;
 int DPORT_STALL_OTHER_CPU_START () ;
 scalar_t__ _DPORT_REG_READ (int ) ;
 int apb_test_result ;
 int dport_test_result ;
 int exit_flag ;
 scalar_t__ stall_other_cpu_counter ;
 int vTaskDelete (int *) ;
 int xSemaphoreGive (int ) ;

__attribute__((used)) static void accessDPORT_stall_other_cpu(void *pvParameters)
{
    xSemaphoreHandle *sema = (xSemaphoreHandle *) pvParameters;
    uint32_t dport_date = DPORT_REG_READ(DPORT_DATE_REG);
    uint32_t dport_date_cur;
    dport_test_result = 1;
    stall_other_cpu_counter = 0;

    while (exit_flag == 0) {
        ++stall_other_cpu_counter;
        DPORT_STALL_OTHER_CPU_START();
        dport_date_cur = _DPORT_REG_READ(DPORT_DATE_REG);
        DPORT_STALL_OTHER_CPU_END();
        if (dport_date != dport_date_cur) {
            apb_test_result = 0;
            break;
        }
    }

    xSemaphoreGive(*sema);
    vTaskDelete(((void*)0));
}
