
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
typedef size_t timer_idx_t ;
typedef size_t timer_group_t ;
typedef int esp_err_t ;
struct TYPE_6__ {TYPE_2__* hw_timer; } ;
struct TYPE_4__ {int enable; scalar_t__ divider; } ;
struct TYPE_5__ {TYPE_1__ config; } ;


 int DIVIDER_RANGE_ERROR ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 TYPE_3__** TG ;
 int TIMER_CHECK (int,int ,int ) ;
 int TIMER_ENTER_CRITICAL (int *) ;
 int TIMER_EXIT_CRITICAL (int *) ;
 size_t TIMER_GROUP_MAX ;
 int TIMER_GROUP_NUM_ERROR ;
 size_t TIMER_MAX ;
 int TIMER_NUM_ERROR ;
 int * timer_spinlock ;

esp_err_t timer_set_divider(timer_group_t group_num, timer_idx_t timer_num, uint32_t divider)
{
    TIMER_CHECK(group_num < TIMER_GROUP_MAX, TIMER_GROUP_NUM_ERROR, ESP_ERR_INVALID_ARG);
    TIMER_CHECK(timer_num < TIMER_MAX, TIMER_NUM_ERROR, ESP_ERR_INVALID_ARG);
    TIMER_CHECK(divider > 1 && divider < 65537, DIVIDER_RANGE_ERROR, ESP_ERR_INVALID_ARG);
    TIMER_ENTER_CRITICAL(&timer_spinlock[group_num]);
    int timer_en = TG[group_num]->hw_timer[timer_num].config.enable;
    TG[group_num]->hw_timer[timer_num].config.enable = 0;
    TG[group_num]->hw_timer[timer_num].config.divider = (uint16_t) divider;
    TG[group_num]->hw_timer[timer_num].config.enable = timer_en;
    TIMER_EXIT_CRITICAL(&timer_spinlock[group_num]);
    return ESP_OK;
}
