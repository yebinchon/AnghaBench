
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef size_t timer_idx_t ;
typedef size_t timer_group_t ;
typedef int esp_err_t ;
struct TYPE_4__ {TYPE_1__* hw_timer; } ;
struct TYPE_3__ {int update; int cnt_low; scalar_t__ cnt_high; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 TYPE_2__** TG ;
 int TIMER_CHECK (int,int ,int ) ;
 size_t TIMER_GROUP_MAX ;
 int TIMER_GROUP_NUM_ERROR ;
 size_t TIMER_MAX ;
 int TIMER_NUM_ERROR ;
 int TIMER_PARAM_ADDR_ERROR ;
 int portENTER_CRITICAL_SAFE (int *) ;
 int portEXIT_CRITICAL_SAFE (int *) ;
 int * timer_spinlock ;

esp_err_t timer_get_counter_value(timer_group_t group_num, timer_idx_t timer_num, uint64_t* timer_val)
{
    TIMER_CHECK(group_num < TIMER_GROUP_MAX, TIMER_GROUP_NUM_ERROR, ESP_ERR_INVALID_ARG);
    TIMER_CHECK(timer_num < TIMER_MAX, TIMER_NUM_ERROR, ESP_ERR_INVALID_ARG);
    TIMER_CHECK(timer_val != ((void*)0), TIMER_PARAM_ADDR_ERROR, ESP_ERR_INVALID_ARG);
    portENTER_CRITICAL_SAFE(&timer_spinlock[group_num]);





    *timer_val = ((uint64_t) TG[group_num]->hw_timer[timer_num].cnt_high << 32)
        | (TG[group_num]->hw_timer[timer_num].cnt_low);
    portEXIT_CRITICAL_SAFE(&timer_spinlock[group_num]);
    return ESP_OK;
}
