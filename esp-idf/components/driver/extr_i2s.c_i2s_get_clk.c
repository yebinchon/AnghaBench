
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t i2s_port_t ;
struct TYPE_2__ {float real_rate; } ;


 int ESP_ERR_INVALID_ARG ;
 int I2S_CHECK (int,char*,int ) ;
 size_t I2S_NUM_MAX ;
 TYPE_1__** p_i2s_obj ;

float i2s_get_clk(i2s_port_t i2s_num)
{
    I2S_CHECK((i2s_num < I2S_NUM_MAX), "i2s_num error", ESP_ERR_INVALID_ARG);
    return p_i2s_obj[i2s_num]->real_rate;
}
