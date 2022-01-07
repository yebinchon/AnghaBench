
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
 int ESP_OK ;
 int ESP_SLAVE_ADDR ;
 int NACK_VAL ;
 int READ_BIT ;
 int i2c_cmd_link_create () ;
 int i2c_cmd_link_delete (int ) ;
 int i2c_master_cmd_begin (int ,int ,int) ;
 int i2c_master_read (int ,int *,size_t,int ) ;
 int i2c_master_read_byte (int ,int *,int ) ;
 int i2c_master_start (int ) ;
 int i2c_master_stop (int ) ;
 int i2c_master_write_byte (int ,int,int ) ;
 int portTICK_RATE_MS ;

__attribute__((used)) static esp_err_t i2c_master_read_slave(i2c_port_t i2c_num, uint8_t *data_rd, size_t size)
{
    if (size == 0) {
        return ESP_OK;
    }
    i2c_cmd_handle_t cmd = i2c_cmd_link_create();
    i2c_master_start(cmd);
    i2c_master_write_byte(cmd, (ESP_SLAVE_ADDR << 1) | READ_BIT, ACK_CHECK_EN);
    if (size > 1) {
        i2c_master_read(cmd, data_rd, size - 1, ACK_VAL);
    }
    i2c_master_read_byte(cmd, data_rd + size - 1, NACK_VAL);
    i2c_master_stop(cmd);
    esp_err_t ret = i2c_master_cmd_begin(i2c_num, cmd, 1000 / portTICK_RATE_MS);
    i2c_cmd_link_delete(cmd);
    return ret;
}
