
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
 int i2c_slave_write_buffer (int ,int*,int,int) ;
 scalar_t__ malloc (int) ;
 int memset (int*,int ,int) ;
 int portTICK_RATE_MS ;
 int printf (char*) ;
 int unity_send_signal (char*) ;
 int unity_wait_for_signal (char*) ;

__attribute__((used)) static void i2c_slave_read_write_test(void)
{
    uint8_t *data_rd = (uint8_t *) malloc(DATA_LENGTH);
    memset(data_rd, 0, DATA_LENGTH);
    uint8_t *data_wr = (uint8_t *) malloc(DATA_LENGTH);
    int size_rd;

    i2c_config_t conf_slave = i2c_slave_init();
    TEST_ESP_OK(i2c_param_config( I2C_SLAVE_NUM, &conf_slave));
    TEST_ESP_OK(i2c_driver_install(I2C_SLAVE_NUM, I2C_MODE_SLAVE,
                                   I2C_SLAVE_RX_BUF_LEN,
                                   I2C_SLAVE_TX_BUF_LEN, 0));
    unity_send_signal("i2c slave init finish");
    unity_wait_for_signal("slave write");

    for (int i = 0; i < DATA_LENGTH / 2; i++) {
        data_wr[i] = i/2;
    }
    size_rd = i2c_slave_write_buffer(I2C_SLAVE_NUM, data_wr, RW_TEST_LENGTH, 2000 / portTICK_RATE_MS);
    disp_buf(data_wr, size_rd);
    unity_send_signal("master read and write");
    unity_wait_for_signal("slave read");
    size_rd = i2c_slave_read_buffer( I2C_SLAVE_NUM, data_rd, RW_TEST_LENGTH, 1000 / portTICK_RATE_MS);
    printf("slave read data is:\n");
    disp_buf(data_rd, size_rd);
    for (int i = 0; i < RW_TEST_LENGTH; i++) {
        TEST_ASSERT(data_rd[i] == i % 3);
    }
    free(data_wr);
    free(data_rd);
    unity_send_signal("ready to delete");
    i2c_driver_delete(I2C_SLAVE_NUM);
}
