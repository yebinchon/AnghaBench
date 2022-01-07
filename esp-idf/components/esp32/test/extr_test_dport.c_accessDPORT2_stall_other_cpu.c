
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xSemaphoreHandle ;


 int DPORT_DATE_REG ;
 int DPORT_STALL_OTHER_CPU_END () ;
 int DPORT_STALL_OTHER_CPU_START () ;
 int XTHAL_GET_CCOUNT () ;
 int XTHAL_SET_CCOMPARE (int,int ) ;
 scalar_t__ _DPORT_REG_READ (int ) ;
 int apb_test_result ;
 int dport_test_result ;
 int exit_flag ;
 int printf (char*) ;
 int vTaskDelete (int *) ;
 int xSemaphoreGive (int ) ;
 int xt_highint5_read_apb ;

__attribute__((used)) static void accessDPORT2_stall_other_cpu(void *pvParameters)
{
    xSemaphoreHandle *sema = (xSemaphoreHandle *) pvParameters;
    dport_test_result = 1;
    while (exit_flag == 0) {
        DPORT_STALL_OTHER_CPU_START();
        XTHAL_SET_CCOMPARE(2, XTHAL_GET_CCOUNT());
        xt_highint5_read_apb = 1;
        for (int i = 0; i < 200; ++i) {
            if (_DPORT_REG_READ(DPORT_DATE_REG) != _DPORT_REG_READ(DPORT_DATE_REG)) {
                apb_test_result = 0;
                break;
            }
        }
        xt_highint5_read_apb = 0;
        DPORT_STALL_OTHER_CPU_END();
    }
    printf("accessDPORT2_stall_other_cpu finish\n");

    xSemaphoreGive(*sema);
    vTaskDelete(((void*)0));
}
