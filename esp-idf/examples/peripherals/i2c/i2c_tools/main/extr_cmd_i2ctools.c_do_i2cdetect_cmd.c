
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int i2c_cmd_handle_t ;
typedef scalar_t__ esp_err_t ;


 int ACK_CHECK_EN ;
 scalar_t__ ESP_ERR_TIMEOUT ;
 scalar_t__ ESP_OK ;
 int I2C_MASTER_RX_BUF_DISABLE ;
 int I2C_MASTER_TX_BUF_DISABLE ;
 int I2C_MODE_MASTER ;
 int WRITE_BIT ;
 int fflush (int ) ;
 int i2c_cmd_link_create () ;
 int i2c_cmd_link_delete (int ) ;
 int i2c_driver_delete (int ) ;
 int i2c_driver_install (int ,int ,int ,int ,int ) ;
 scalar_t__ i2c_master_cmd_begin (int ,int ,int) ;
 int i2c_master_driver_initialize () ;
 int i2c_master_start (int ) ;
 int i2c_master_stop (int ) ;
 int i2c_master_write_byte (int ,int,int ) ;
 int i2c_port ;
 int portTICK_RATE_MS ;
 int printf (char*,...) ;
 int stdout ;

__attribute__((used)) static int do_i2cdetect_cmd(int argc, char **argv)
{
    i2c_master_driver_initialize();
    i2c_driver_install(i2c_port, I2C_MODE_MASTER, I2C_MASTER_RX_BUF_DISABLE, I2C_MASTER_TX_BUF_DISABLE, 0);
    uint8_t address;
    printf("     0  1  2  3  4  5  6  7  8  9  a  b  c  d  e  f\r\n");
    for (int i = 0; i < 128; i += 16) {
        printf("%02x: ", i);
        for (int j = 0; j < 16; j++) {
            fflush(stdout);
            address = i + j;
            i2c_cmd_handle_t cmd = i2c_cmd_link_create();
            i2c_master_start(cmd);
            i2c_master_write_byte(cmd, (address << 1) | WRITE_BIT, ACK_CHECK_EN);
            i2c_master_stop(cmd);
            esp_err_t ret = i2c_master_cmd_begin(i2c_port, cmd, 50 / portTICK_RATE_MS);
            i2c_cmd_link_delete(cmd);
            if (ret == ESP_OK) {
                printf("%02x ", address);
            } else if (ret == ESP_ERR_TIMEOUT) {
                printf("UU ");
            } else {
                printf("-- ");
            }
        }
        printf("\r\n");
    }

    i2c_driver_delete(i2c_port);
    return 0;
}
