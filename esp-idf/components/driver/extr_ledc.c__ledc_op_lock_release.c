
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t ledc_mode_t ;
struct TYPE_3__ {int ledc_fade_mux; } ;
typedef TYPE_1__ ledc_fade_t ;
typedef size_t ledc_channel_t ;


 TYPE_1__*** s_ledc_fade_rec ;
 int xSemaphoreGive (int ) ;

__attribute__((used)) static void _ledc_op_lock_release(ledc_mode_t mode, ledc_channel_t channel)
{
    ledc_fade_t* fade = s_ledc_fade_rec[mode][channel];
    if (fade) {
        xSemaphoreGive(fade->ledc_fade_mux);
    }
}
