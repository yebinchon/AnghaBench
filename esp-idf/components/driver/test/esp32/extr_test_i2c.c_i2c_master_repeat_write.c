
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int i2c_config_t ;


 int DATA_LENGTH ;
 int I2C_MASTER_NUM ;
 int I2C_MASTER_RX_BUF_DISABLE ;
 int I2C_MASTER_TX_BUF_DISABLE ;
 int I2C_MODE_MASTER ;
 int RW_TEST_LENGTH ;
 int TEST_ESP_OK (int ) ;
 int disp_buf (int*,int ) ;
 int free (int*) ;
 int i2c_driver_delete (int ) ;
 int i2c_driver_install (int ,int ,int ,int ,int ) ;
 int i2c_master_init () ;
 int i2c_master_write_slave (int ,int*,int ) ;
 int i2c_param_config (int ,int *) ;
 scalar_t__ malloc (int) ;
 int unity_send_signal (char*) ;
 int unity_wait_for_signal (char*) ;

__attribute__((used)) static void i2c_master_repeat_write(void)
{
    uint8_t *data_wr = (uint8_t *) malloc(DATA_LENGTH);
    int times = 3;

    i2c_config_t conf_master = i2c_master_init();
    TEST_ESP_OK(i2c_param_config(I2C_MASTER_NUM, &conf_master));

    TEST_ESP_OK(i2c_driver_install(I2C_MASTER_NUM, I2C_MODE_MASTER,
                                   I2C_MASTER_RX_BUF_DISABLE,
                                   I2C_MASTER_TX_BUF_DISABLE, 0));
    unity_wait_for_signal("i2c slave init finish");

    for (int j = 0; j < times; j++) {
        for (int i = 0; i < DATA_LENGTH; i++) {
            data_wr[i] = j + i;
        }
        i2c_master_write_slave(I2C_MASTER_NUM, data_wr, RW_TEST_LENGTH);
        disp_buf(data_wr, RW_TEST_LENGTH);
    }
    free(data_wr);
    unity_send_signal("master write");
    unity_wait_for_signal("ready to delete");
    i2c_driver_delete(I2C_MASTER_NUM);
}
