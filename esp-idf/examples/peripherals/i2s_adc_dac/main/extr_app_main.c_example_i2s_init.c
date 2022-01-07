
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mode; int dma_buf_count; int dma_buf_len; int use_apll; int intr_alloc_flags; int channel_format; int communication_format; int bits_per_sample; int sample_rate; } ;
typedef TYPE_1__ i2s_config_t ;


 int EXAMPLE_I2S_FORMAT ;
 int EXAMPLE_I2S_NUM ;
 int EXAMPLE_I2S_SAMPLE_BITS ;
 int EXAMPLE_I2S_SAMPLE_RATE ;
 int I2S_ADC_CHANNEL ;
 int I2S_ADC_UNIT ;
 int I2S_COMM_FORMAT_I2S_MSB ;
 int I2S_DAC_CHANNEL_BOTH_EN ;
 int I2S_MODE_ADC_BUILT_IN ;
 int I2S_MODE_DAC_BUILT_IN ;
 int I2S_MODE_MASTER ;
 int I2S_MODE_RX ;
 int I2S_MODE_TX ;
 int i2s_driver_install (int,TYPE_1__*,int ,int *) ;
 int i2s_set_adc_mode (int ,int ) ;
 int i2s_set_dac_mode (int ) ;

void example_i2s_init(void)
{
  int i2s_num = EXAMPLE_I2S_NUM;
  i2s_config_t i2s_config = {
        .mode = I2S_MODE_MASTER | I2S_MODE_RX | I2S_MODE_TX | I2S_MODE_DAC_BUILT_IN | I2S_MODE_ADC_BUILT_IN,
        .sample_rate = EXAMPLE_I2S_SAMPLE_RATE,
        .bits_per_sample = EXAMPLE_I2S_SAMPLE_BITS,
     .communication_format = I2S_COMM_FORMAT_I2S_MSB,
     .channel_format = EXAMPLE_I2S_FORMAT,
     .intr_alloc_flags = 0,
     .dma_buf_count = 2,
     .dma_buf_len = 1024,
     .use_apll = 1,
  };

  i2s_driver_install(i2s_num, &i2s_config, 0, ((void*)0));

  i2s_set_dac_mode(I2S_DAC_CHANNEL_BOTH_EN);

  i2s_set_adc_mode(I2S_ADC_UNIT, I2S_ADC_CHANNEL);
}
