
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t ledc_mode_t ;
struct TYPE_3__ {int ledc_fade_sem; } ;
typedef TYPE_1__ ledc_fade_t ;
typedef size_t ledc_channel_t ;


 int LEDC_INTR_DISABLE ;
 int ledc_enable_intr_type (size_t,size_t,int ) ;
 int portMAX_DELAY ;
 TYPE_1__*** s_ledc_fade_rec ;
 int xSemaphoreTake (int ,int ) ;

__attribute__((used)) static void _ledc_fade_hw_acquire(ledc_mode_t mode, ledc_channel_t channel)
{
    ledc_fade_t* fade = s_ledc_fade_rec[mode][channel];
    if (fade) {
        xSemaphoreTake(fade->ledc_fade_sem, portMAX_DELAY);
        ledc_enable_intr_type(mode, channel, LEDC_INTR_DISABLE);
    }
}
