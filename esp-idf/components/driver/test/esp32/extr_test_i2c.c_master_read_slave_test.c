
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int i2c_config_t ;
typedef int i2c_cmd_handle_t ;


 int ACK_CHECK_EN ;
 int ACK_VAL ;
 int DATA_LENGTH ;
 int ESP_SLAVE_ADDR ;
 int I2C_MASTER_NUM ;
 int I2C_MASTER_RX_BUF_DISABLE ;
 int I2C_MASTER_TX_BUF_DISABLE ;
 int I2C_MODE_MASTER ;
 int NACK_VAL ;
 int READ_BIT ;
 int RW_TEST_LENGTH ;
 int TEST_ASSERT (int) ;
 int TEST_ESP_OK (int ) ;
 int free (int*) ;
 int i2c_cmd_link_create () ;
 int i2c_cmd_link_delete (int ) ;
 int i2c_driver_delete (int ) ;
 int i2c_driver_install (int ,int ,int ,int ,int ) ;
 int i2c_master_cmd_begin (int ,int ,int) ;
 int i2c_master_init () ;
 int i2c_master_read (int ,int*,int,int ) ;
 int i2c_master_read_byte (int ,int*,int ) ;
 int i2c_master_start (int ) ;
 int i2c_master_stop (int ) ;
 int i2c_master_write_byte (int ,int,int ) ;
 int i2c_param_config (int ,int *) ;
 scalar_t__ malloc (int ) ;
 int memset (int*,int ,int ) ;
 int portTICK_RATE_MS ;
 int printf (char*,int) ;
 int unity_send_signal (char*) ;
 int unity_wait_for_signal (char*) ;
 int vTaskDelay (int) ;

__attribute__((used)) static void master_read_slave_test(void)
{
    uint8_t *data_rd = (uint8_t *) malloc(DATA_LENGTH);
    memset(data_rd, 0, DATA_LENGTH);
    i2c_config_t conf_master = i2c_master_init();
    TEST_ESP_OK(i2c_param_config(I2C_MASTER_NUM, &conf_master));
    TEST_ESP_OK(i2c_driver_install(I2C_MASTER_NUM, I2C_MODE_MASTER,
                                   I2C_MASTER_RX_BUF_DISABLE,
                                   I2C_MASTER_TX_BUF_DISABLE, 0));
    unity_wait_for_signal("i2c slave init finish");

    i2c_cmd_handle_t cmd = i2c_cmd_link_create();
    i2c_master_start(cmd);
    i2c_master_write_byte(cmd, ( ESP_SLAVE_ADDR << 1 ) | READ_BIT, ACK_CHECK_EN);

    unity_send_signal("slave write");
    unity_wait_for_signal("master read");
    i2c_master_read(cmd, data_rd, RW_TEST_LENGTH-1, ACK_VAL);
    i2c_master_read_byte(cmd, data_rd + RW_TEST_LENGTH-1, NACK_VAL);
    i2c_master_stop(cmd);
    i2c_master_cmd_begin(I2C_MASTER_NUM, cmd, 5000 / portTICK_RATE_MS);
    i2c_cmd_link_delete(cmd);
    vTaskDelay(100 / portTICK_RATE_MS);
    for (int i = 0; i < RW_TEST_LENGTH; i++) {
        printf("%d\n", data_rd[i]);
        TEST_ASSERT(data_rd[i]==i);
    }
    free(data_rd);
    unity_send_signal("ready to delete");
    i2c_driver_delete(I2C_MASTER_NUM);
}
