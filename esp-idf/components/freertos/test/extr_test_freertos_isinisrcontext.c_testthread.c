
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int intr_handle_t ;
typedef int esp_err_t ;


 int ESP_OK ;
 int ETS_INTERNAL_TIMER1_INTR_SOURCE ;
 int TEST_ASSERT (int) ;
 int TEST_ASSERT_EQUAL_HEX32 (int ,int ) ;
 int esp_intr_alloc (int ,int ,int *,int *,int *) ;
 int esp_intr_free (int ) ;
 int in_int_context ;
 int int_handled ;
 int portTICK_PERIOD_MS ;
 int testint ;
 int vTaskDelay (int) ;
 int vTaskDelete (int *) ;
 int xPortInIsrContext () ;
 scalar_t__ xthal_get_ccount () ;
 int xthal_set_ccompare (int,scalar_t__) ;

__attribute__((used)) static void testthread(void *arg) {
    intr_handle_t handle;
    in_int_context=0;
    int_handled=0;
    TEST_ASSERT(!xPortInIsrContext());
    xthal_set_ccompare(1, xthal_get_ccount()+8000000);
    esp_err_t err = esp_intr_alloc(ETS_INTERNAL_TIMER1_INTR_SOURCE, 0, &testint, ((void*)0), &handle);
    TEST_ASSERT_EQUAL_HEX32(ESP_OK, err);
    vTaskDelay(100 / portTICK_PERIOD_MS);
    TEST_ASSERT(int_handled);
    TEST_ASSERT(in_int_context);
    TEST_ASSERT_EQUAL_HEX32( ESP_OK, esp_intr_free(handle) );
    vTaskDelete(((void*)0));
}
