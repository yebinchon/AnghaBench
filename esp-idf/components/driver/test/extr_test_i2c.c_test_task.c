
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xSemaphoreHandle ;
typedef int uint8_t ;
typedef int i2c_config_t ;


 int DATA_LENGTH ;
 int I2C_MODE_SLAVE ;
 int I2C_SLAVE_NUM ;
 int I2C_SLAVE_RX_BUF_LEN ;
 int I2C_SLAVE_TX_BUF_LEN ;
 int TEST_ESP_OK (int ) ;
 int exit_flag ;
 int free (int *) ;
 int i2c_driver_install (int ,int ,int ,int ,int ) ;
 int i2c_param_config (int ,int *) ;
 int i2c_slave_init () ;
 int i2c_slave_read_buffer (int ,int *,int ,int ) ;
 int i2c_slave_write_buffer (int ,int *,int ,int ) ;
 scalar_t__ malloc (int ) ;
 scalar_t__ test_read_func ;
 int vTaskDelete (int *) ;
 int xSemaphoreGive (int ) ;

__attribute__((used)) static void test_task(void *pvParameters)
{
    xSemaphoreHandle *sema = (xSemaphoreHandle *) pvParameters;

    uint8_t *data = (uint8_t *) malloc(DATA_LENGTH);
    i2c_config_t conf_slave = i2c_slave_init();
    TEST_ESP_OK(i2c_param_config( I2C_SLAVE_NUM, &conf_slave));
    TEST_ESP_OK(i2c_driver_install(I2C_SLAVE_NUM, I2C_MODE_SLAVE,
                                   I2C_SLAVE_RX_BUF_LEN,
                                   I2C_SLAVE_TX_BUF_LEN, 0));
    while (exit_flag == 0) {
        if (test_read_func) {
            i2c_slave_read_buffer(I2C_SLAVE_NUM, data, DATA_LENGTH, 0);
        } else {
            i2c_slave_write_buffer(I2C_SLAVE_NUM, data, DATA_LENGTH, 0);
        }
    }

    free(data);
    xSemaphoreGive(*sema);
    vTaskDelete(((void*)0));
}
