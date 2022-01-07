
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timer_isr_handle_t ;


 int ESP_INTR_FLAG_INTRDISABLED ;
 int TEST_ASSERT (int) ;
 int TIMER_0 ;
 int TIMER_1 ;
 int TIMER_GROUP_0 ;
 int TIMER_GROUP_1 ;
 int* count ;
 int esp_intr_disable (int ) ;
 int esp_intr_enable (int ) ;
 int esp_intr_free (int ) ;
 int esp_intr_get_intno (int ) ;
 int my_timer_init (int ,int ,int) ;
 int portTICK_PERIOD_MS ;
 int printf (char*,...) ;
 int timer_isr ;
 int timer_isr_register (int ,int ,int ,void*,int,int *) ;
 int timer_start (int ,int ) ;
 int vTaskDelay (int) ;

__attribute__((used)) static void timer_test(int flags) {
    int x;
    timer_isr_handle_t inth[4];
    my_timer_init(TIMER_GROUP_0, TIMER_0, 110000);
    my_timer_init(TIMER_GROUP_0, TIMER_1, 120000);
    my_timer_init(TIMER_GROUP_1, TIMER_0, 130000);
    my_timer_init(TIMER_GROUP_1, TIMER_1, 140000);
    timer_isr_register(TIMER_GROUP_0, TIMER_0, timer_isr, (void*)0, flags|ESP_INTR_FLAG_INTRDISABLED, &inth[0]);
    timer_isr_register(TIMER_GROUP_0, TIMER_1, timer_isr, (void*)1, flags, &inth[1]);
    timer_isr_register(TIMER_GROUP_1, TIMER_0, timer_isr, (void*)2, flags, &inth[2]);
    timer_isr_register(TIMER_GROUP_1, TIMER_1, timer_isr, (void*)3, flags, &inth[3]);
    timer_start(TIMER_GROUP_0, TIMER_0);
    timer_start(TIMER_GROUP_0, TIMER_1);
    timer_start(TIMER_GROUP_1, TIMER_0);
    timer_start(TIMER_GROUP_1, TIMER_1);

    for (x=0; x<4; x++) count[x]=0;
    printf("Interrupts allocated: %d (dis) %d %d %d\n",
            esp_intr_get_intno(inth[0]), esp_intr_get_intno(inth[1]),
            esp_intr_get_intno(inth[2]), esp_intr_get_intno(inth[3]));
    printf("Timer values on start: %d %d %d %d\n", count[0], count[1], count[2], count[3]);
    vTaskDelay(1000 / portTICK_PERIOD_MS);
    printf("Timer values after 1 sec: %d %d %d %d\n", count[0], count[1], count[2], count[3]);
    TEST_ASSERT(count[0]==0);
    TEST_ASSERT(count[1]!=0);
    TEST_ASSERT(count[2]!=0);
    TEST_ASSERT(count[3]!=0);

    printf("Disabling timers 1 and 2...\n");
    esp_intr_enable(inth[0]);
    esp_intr_disable(inth[1]);
    esp_intr_disable(inth[2]);
    for (x=0; x<4; x++) count[x]=0;
    vTaskDelay(1000 / portTICK_PERIOD_MS);
    printf("Timer values after 1 sec: %d %d %d %d\n", count[0], count[1], count[2], count[3]);
    TEST_ASSERT(count[0]!=0);
    TEST_ASSERT(count[1]==0);
    TEST_ASSERT(count[2]==0);
    TEST_ASSERT(count[3]!=0);
    printf("Disabling other half...\n");
    esp_intr_enable(inth[1]);
    esp_intr_enable(inth[2]);
    esp_intr_disable(inth[0]);
    esp_intr_disable(inth[3]);
    for (x=0; x<4; x++) count[x]=0;
    vTaskDelay(1000 / portTICK_PERIOD_MS);
    printf("Timer values after 1 sec: %d %d %d %d\n", count[0], count[1], count[2], count[3]);
    TEST_ASSERT(count[0]==0);
    TEST_ASSERT(count[1]!=0);
    TEST_ASSERT(count[2]!=0);
    TEST_ASSERT(count[3]==0);
    printf("Done.\n");
    esp_intr_free(inth[0]);
    esp_intr_free(inth[1]);
    esp_intr_free(inth[2]);
    esp_intr_free(inth[3]);
}
