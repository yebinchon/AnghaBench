
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TimerHandle_t ;


 int TEST_ASSERT_UINT32_WITHIN (int ,int ,int ) ;
 int TICK_DELTA ;
 int tmr_ideal_exp ;
 int xTaskGetTickCount () ;

__attribute__((used)) static void tmr_cb(TimerHandle_t xtimer)
{

    TEST_ASSERT_UINT32_WITHIN(TICK_DELTA, tmr_ideal_exp, xTaskGetTickCount());
}
