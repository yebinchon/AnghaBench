
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xSemaphoreHandle ;


 int DPORT_DATE_REG ;
 scalar_t__ DPORT_REG_READ (int ) ;
 int ESP_INTR_FLAG_IRAM ;
 int ESP_INTR_FLAG_LEVEL5 ;
 int ETS_INTERNAL_TIMER2_INTR_SOURCE ;
 int TEST_ESP_OK (int ) ;
 scalar_t__ XTHAL_GET_CCOUNT () ;
 int XTHAL_SET_CCOMPARE (int,scalar_t__) ;
 int dport_test_result ;
 int esp_intr_alloc (int ,int,int *,int *,int *) ;
 int esp_intr_free (int ) ;
 int exit_flag ;
 int inth ;
 int printf (char*) ;
 int vTaskDelete (int *) ;
 int xSemaphoreGive (int ) ;

__attribute__((used)) static void accessDPORT2(void *pvParameters)
{
    xSemaphoreHandle *sema = (xSemaphoreHandle *) pvParameters;
    dport_test_result = 1;

    TEST_ESP_OK(esp_intr_alloc(ETS_INTERNAL_TIMER2_INTR_SOURCE, ESP_INTR_FLAG_LEVEL5 | ESP_INTR_FLAG_IRAM, ((void*)0), ((void*)0), &inth));

    while (exit_flag == 0) {
        XTHAL_SET_CCOMPARE(2, XTHAL_GET_CCOUNT() + 21);
        for (int i = 0; i < 200; ++i) {
            if (DPORT_REG_READ(DPORT_DATE_REG) != DPORT_REG_READ(DPORT_DATE_REG)) {
                dport_test_result = 0;
                break;
            }
        }
    }
    esp_intr_free(inth);
    printf("accessDPORT2 finish\n");

    xSemaphoreGive(*sema);
    vTaskDelete(((void*)0));
}
