
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int i2c_port_t ;
typedef int i2c_cmd_handle_t ;
typedef int esp_err_t ;


 int ACK_CHECK_EN ;
 int ACK_VAL ;
 int BH1750_CMD_START ;
 int BH1750_SENSOR_ADDR ;
 int ESP_OK ;
 int NACK_VAL ;
 int READ_BIT ;
 int WRITE_BIT ;
 int i2c_cmd_link_create () ;
 int i2c_cmd_link_delete (int ) ;
 int i2c_master_cmd_begin (int ,int ,int) ;
 int i2c_master_read_byte (int ,int *,int ) ;
 int i2c_master_start (int ) ;
 int i2c_master_stop (int ) ;
 int i2c_master_write_byte (int ,int,int ) ;
 int portTICK_RATE_MS ;
 int vTaskDelay (int) ;

__attribute__((used)) static esp_err_t i2c_master_sensor_test(i2c_port_t i2c_num, uint8_t *data_h, uint8_t *data_l)
{
    int ret;
    i2c_cmd_handle_t cmd = i2c_cmd_link_create();
    i2c_master_start(cmd);
    i2c_master_write_byte(cmd, BH1750_SENSOR_ADDR << 1 | WRITE_BIT, ACK_CHECK_EN);
    i2c_master_write_byte(cmd, BH1750_CMD_START, ACK_CHECK_EN);
    i2c_master_stop(cmd);
    ret = i2c_master_cmd_begin(i2c_num, cmd, 1000 / portTICK_RATE_MS);
    i2c_cmd_link_delete(cmd);
    if (ret != ESP_OK) {
        return ret;
    }
    vTaskDelay(30 / portTICK_RATE_MS);
    cmd = i2c_cmd_link_create();
    i2c_master_start(cmd);
    i2c_master_write_byte(cmd, BH1750_SENSOR_ADDR << 1 | READ_BIT, ACK_CHECK_EN);
    i2c_master_read_byte(cmd, data_h, ACK_VAL);
    i2c_master_read_byte(cmd, data_l, NACK_VAL);
    i2c_master_stop(cmd);
    ret = i2c_master_cmd_begin(i2c_num, cmd, 1000 / portTICK_RATE_MS);
    i2c_cmd_link_delete(cmd);
    return ret;
}
