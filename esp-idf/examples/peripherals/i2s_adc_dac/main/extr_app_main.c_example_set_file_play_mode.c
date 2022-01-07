
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXAMPLE_I2S_NUM ;
 int EXAMPLE_I2S_SAMPLE_BITS ;
 int i2s_set_clk (int ,int,int ,int) ;

void example_set_file_play_mode(void)
{
    i2s_set_clk(EXAMPLE_I2S_NUM, 16000, EXAMPLE_I2S_SAMPLE_BITS, 1);
}
