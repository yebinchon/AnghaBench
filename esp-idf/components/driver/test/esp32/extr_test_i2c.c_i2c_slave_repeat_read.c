
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int i2c_config_t ;


 int DATA_LENGTH ;
 int I2C_MODE_SLAVE ;
 int I2C_SLAVE_NUM ;
 int I2C_SLAVE_RX_BUF_LEN ;
 int I2C_SLAVE_TX_BUF_LEN ;
 int RW_TEST_LENGTH ;
 int TEST_ASSERT (int) ;
 int TEST_ESP_OK (int ) ;
 int disp_buf (int*,int) ;
 int free (int*) ;
 int i2c_driver_delete (int ) ;
 int i2c_driver_install (int ,int ,int ,int ,int ) ;
 int i2c_param_config (int ,int *) ;
 int i2c_slave_init () ;
 int i2c_slave_read_buffer (int ,int*,int,int) ;
 scalar_t__ malloc (int) ;
 int portTICK_RATE_MS ;
 int printf (char*,int,int) ;
 int unity_send_signal (char*) ;
 int unity_wait_for_signal (char*) ;

__attribute__((used)) static void i2c_slave_repeat_read(void)
{
    int size_rd = 0;
    int times = 3;
    uint8_t *data_rd = (uint8_t *) malloc(DATA_LENGTH * 3);

    i2c_config_t conf_slave = i2c_slave_init();
    TEST_ESP_OK(i2c_param_config( I2C_SLAVE_NUM, &conf_slave));
    TEST_ESP_OK(i2c_driver_install(I2C_SLAVE_NUM, I2C_MODE_SLAVE,
                                   I2C_SLAVE_RX_BUF_LEN,
                                   I2C_SLAVE_TX_BUF_LEN, 0));
    unity_send_signal("i2c slave init finish");
    unity_wait_for_signal("master write");

    while (1) {
        int len = i2c_slave_read_buffer( I2C_SLAVE_NUM, data_rd + size_rd, RW_TEST_LENGTH * 3, 10000 / portTICK_RATE_MS);
        if (len == 0) {
            break;
        }
        size_rd += len;
    }
    disp_buf(data_rd, size_rd);
    for (int j = 0; j < times; j++) {
        for (int i = 0; i < RW_TEST_LENGTH; i++) {
            printf("data: %d, %d\n", data_rd[j * RW_TEST_LENGTH + i], (i % 129 + j));
            TEST_ASSERT(data_rd[j * RW_TEST_LENGTH + i] == (i % 129 + j));
        }
    }
    free(data_rd);
    unity_send_signal("ready to delete");
    i2c_driver_delete(I2C_SLAVE_NUM);
}
