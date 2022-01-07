
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXAMPLE_I2S_CHANNEL_NUM ;
 int EXAMPLE_I2S_NUM ;
 int EXAMPLE_I2S_SAMPLE_BITS ;
 int EXAMPLE_I2S_SAMPLE_RATE ;
 int i2s_set_clk (int ,int ,int ,int ) ;

void example_reset_play_mode(void)
{
    i2s_set_clk(EXAMPLE_I2S_NUM, EXAMPLE_I2S_SAMPLE_RATE, EXAMPLE_I2S_SAMPLE_BITS, EXAMPLE_I2S_CHANNEL_NUM);
}
