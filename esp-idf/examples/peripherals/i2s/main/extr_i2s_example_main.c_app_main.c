
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int data_in_num; int data_out_num; int ws_io_num; int bck_io_num; } ;
typedef TYPE_1__ i2s_pin_config_t ;
struct TYPE_6__ {int mode; int bits_per_sample; int communication_format; int dma_buf_count; int dma_buf_len; int use_apll; int intr_alloc_flags; int channel_format; int sample_rate; } ;
typedef TYPE_2__ i2s_config_t ;


 int ESP_INTR_FLAG_LEVEL1 ;
 int I2S_BCK_IO ;
 int I2S_CHANNEL_FMT_RIGHT_LEFT ;
 int I2S_COMM_FORMAT_I2S ;
 int I2S_COMM_FORMAT_I2S_MSB ;
 int I2S_DI_IO ;
 int I2S_DO_IO ;
 int I2S_MODE_MASTER ;
 int I2S_MODE_TX ;
 int I2S_NUM ;
 int I2S_WS_IO ;
 int SAMPLE_RATE ;
 int i2s_driver_install (int ,TYPE_2__*,int ,int *) ;
 int i2s_set_pin (int ,TYPE_1__*) ;
 int portTICK_RATE_MS ;
 int setup_triangle_sine_waves (int) ;
 int vTaskDelay (int) ;

void app_main(void)
{





    i2s_config_t i2s_config = {
        .mode = I2S_MODE_MASTER | I2S_MODE_TX,
        .sample_rate = SAMPLE_RATE,
        .bits_per_sample = 16,
        .channel_format = I2S_CHANNEL_FMT_RIGHT_LEFT,
        .communication_format = I2S_COMM_FORMAT_I2S | I2S_COMM_FORMAT_I2S_MSB,
        .dma_buf_count = 6,
        .dma_buf_len = 60,
        .use_apll = 0,
        .intr_alloc_flags = ESP_INTR_FLAG_LEVEL1
    };
    i2s_pin_config_t pin_config = {
        .bck_io_num = I2S_BCK_IO,
        .ws_io_num = I2S_WS_IO,
        .data_out_num = I2S_DO_IO,
        .data_in_num = I2S_DI_IO
    };
    i2s_driver_install(I2S_NUM, &i2s_config, 0, ((void*)0));
    i2s_set_pin(I2S_NUM, &pin_config);

    int test_bits = 16;
    while (1) {
        setup_triangle_sine_waves(test_bits);
        vTaskDelay(5000/portTICK_RATE_MS);
        test_bits += 8;
        if(test_bits > 32)
            test_bits = 16;

    }

}
