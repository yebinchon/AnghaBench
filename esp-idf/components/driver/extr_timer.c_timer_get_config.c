
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t timer_idx_t ;
typedef size_t timer_group_t ;
struct TYPE_8__ {int divider; int intr_type; int counter_en; int counter_dir; int auto_reload; int alarm_en; } ;
typedef TYPE_3__ timer_config_t ;
typedef int esp_err_t ;
struct TYPE_9__ {TYPE_2__* hw_timer; } ;
struct TYPE_6__ {int divider; scalar_t__ level_int_en; int enable; int increase; int autoreload; int alarm_en; } ;
struct TYPE_7__ {TYPE_1__ config; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 TYPE_5__** TG ;
 int TIMER_CHECK (int,int ,int ) ;
 int TIMER_ENTER_CRITICAL (int *) ;
 int TIMER_EXIT_CRITICAL (int *) ;
 size_t TIMER_GROUP_MAX ;
 int TIMER_GROUP_NUM_ERROR ;
 int TIMER_INTR_LEVEL ;
 size_t TIMER_MAX ;
 int TIMER_NUM_ERROR ;
 int TIMER_PARAM_ADDR_ERROR ;
 int * timer_spinlock ;

esp_err_t timer_get_config(timer_group_t group_num, timer_idx_t timer_num, timer_config_t *config)
{
    TIMER_CHECK(group_num < TIMER_GROUP_MAX, TIMER_GROUP_NUM_ERROR, ESP_ERR_INVALID_ARG);
    TIMER_CHECK(timer_num < TIMER_MAX, TIMER_NUM_ERROR, ESP_ERR_INVALID_ARG);
    TIMER_CHECK(config != ((void*)0), TIMER_PARAM_ADDR_ERROR, ESP_ERR_INVALID_ARG);
    TIMER_ENTER_CRITICAL(&timer_spinlock[group_num]);
    config->alarm_en = TG[group_num]->hw_timer[timer_num].config.alarm_en;
    config->auto_reload = TG[group_num]->hw_timer[timer_num].config.autoreload;
    config->counter_dir = TG[group_num]->hw_timer[timer_num].config.increase;
    config->divider = (TG[group_num]->hw_timer[timer_num].config.divider == 0 ?
        65536 : TG[group_num]->hw_timer[timer_num].config.divider);
    config->counter_en = TG[group_num]->hw_timer[timer_num].config.enable;
    if(TG[group_num]->hw_timer[timer_num].config.level_int_en) {
        config->intr_type = TIMER_INTR_LEVEL;
    }
    TIMER_EXIT_CRITICAL(&timer_spinlock[group_num]);
    return ESP_OK;
}
