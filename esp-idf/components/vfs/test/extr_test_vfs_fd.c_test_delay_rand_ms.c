
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int portTICK_PERIOD_MS ;
 int rand () ;
 int vTaskDelay (int) ;

__attribute__((used)) static inline void test_delay_rand_ms(int ms)
{
    vTaskDelay((rand() % ms) / portTICK_PERIOD_MS);
}
