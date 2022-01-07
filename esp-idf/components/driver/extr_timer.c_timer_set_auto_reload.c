
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t timer_idx_t ;
typedef size_t timer_group_t ;
typedef scalar_t__ timer_autoreload_t ;
typedef int esp_err_t ;
struct TYPE_6__ {TYPE_2__* hw_timer; } ;
struct TYPE_4__ {scalar_t__ autoreload; } ;
struct TYPE_5__ {TYPE_1__ config; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 TYPE_3__** TG ;
 int TIMER_AUTORELOAD_ERROR ;
 scalar_t__ TIMER_AUTORELOAD_MAX ;
 int TIMER_CHECK (int,int ,int ) ;
 int TIMER_ENTER_CRITICAL (int *) ;
 int TIMER_EXIT_CRITICAL (int *) ;
 size_t TIMER_GROUP_MAX ;
 int TIMER_GROUP_NUM_ERROR ;
 size_t TIMER_MAX ;
 int TIMER_NUM_ERROR ;
 int * timer_spinlock ;

esp_err_t timer_set_auto_reload(timer_group_t group_num, timer_idx_t timer_num, timer_autoreload_t reload)
{
    TIMER_CHECK(group_num < TIMER_GROUP_MAX, TIMER_GROUP_NUM_ERROR, ESP_ERR_INVALID_ARG);
    TIMER_CHECK(timer_num < TIMER_MAX, TIMER_NUM_ERROR, ESP_ERR_INVALID_ARG);
    TIMER_CHECK(reload < TIMER_AUTORELOAD_MAX, TIMER_AUTORELOAD_ERROR, ESP_ERR_INVALID_ARG);
    TIMER_ENTER_CRITICAL(&timer_spinlock[group_num]);
    TG[group_num]->hw_timer[timer_num].config.autoreload = reload;
    TIMER_EXIT_CRITICAL(&timer_spinlock[group_num]);
    return ESP_OK;
}
