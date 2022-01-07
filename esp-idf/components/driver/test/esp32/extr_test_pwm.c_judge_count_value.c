
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;


 int GPIO_PWMA_PCNT_INPUT ;
 int GPIO_PWMB_PCNT_INPUT ;
 int PCNT_CTRL_FLOATING_IO1 ;
 int PCNT_CTRL_FLOATING_IO2 ;
 int TEST_ASSERT_INT16_WITHIN (int,int ,int) ;
 int pcnt_count (int ,int ,int) ;

__attribute__((used)) static void judge_count_value(int allow_error ,int expect_freq)
{
    int16_t countA, countB;

    countA = pcnt_count(GPIO_PWMA_PCNT_INPUT, PCNT_CTRL_FLOATING_IO1, 1000);
    countB = pcnt_count(GPIO_PWMB_PCNT_INPUT, PCNT_CTRL_FLOATING_IO2, 1000);

    TEST_ASSERT_INT16_WITHIN(allow_error, countA, expect_freq);
    TEST_ASSERT_INT16_WITHIN(allow_error, countB, expect_freq);
}
