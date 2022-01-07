
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ timer_idx_t ;
typedef scalar_t__ timer_group_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int TIMER_CHECK (int,int ,int ) ;
 scalar_t__ TIMER_GROUP_MAX ;
 int TIMER_GROUP_NUM_ERROR ;
 int TIMER_LL_GET_INTR (scalar_t__) ;
 scalar_t__ TIMER_MAX ;
 int TIMER_NUM_ERROR ;
 int timer_group_intr_enable (scalar_t__,int ) ;

esp_err_t timer_enable_intr(timer_group_t group_num, timer_idx_t timer_num)
{
    TIMER_CHECK(group_num < TIMER_GROUP_MAX, TIMER_GROUP_NUM_ERROR, ESP_ERR_INVALID_ARG);
    TIMER_CHECK(timer_num < TIMER_MAX, TIMER_NUM_ERROR, ESP_ERR_INVALID_ARG);
    return timer_group_intr_enable(group_num, TIMER_LL_GET_INTR(timer_num));
}
