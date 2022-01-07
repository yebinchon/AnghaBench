
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int i2c_cmd_handle_t ;
typedef scalar_t__ esp_err_t ;
struct TYPE_8__ {TYPE_3__* data_length; TYPE_2__* register_address; TYPE_1__* chip_address; int end; } ;
struct TYPE_7__ {int* ival; scalar_t__ count; } ;
struct TYPE_6__ {int* ival; scalar_t__ count; } ;
struct TYPE_5__ {int* ival; } ;


 int ACK_CHECK_EN ;
 int ACK_VAL ;
 scalar_t__ ESP_ERR_TIMEOUT ;
 int ESP_LOGW (int ,char*) ;
 scalar_t__ ESP_OK ;
 int I2C_MASTER_RX_BUF_DISABLE ;
 int I2C_MASTER_TX_BUF_DISABLE ;
 int I2C_MODE_MASTER ;
 int NACK_VAL ;
 int READ_BIT ;
 int TAG ;
 int WRITE_BIT ;
 int arg_parse (int,char**,void**) ;
 int arg_print_errors (int ,int ,char*) ;
 int free (int*) ;
 int i2c_cmd_link_create () ;
 int i2c_cmd_link_delete (int ) ;
 int i2c_driver_delete (int ) ;
 int i2c_driver_install (int ,int ,int ,int ,int ) ;
 scalar_t__ i2c_master_cmd_begin (int ,int ,int) ;
 int i2c_master_driver_initialize () ;
 int i2c_master_read (int ,int*,int,int ) ;
 int i2c_master_read_byte (int ,int*,int ) ;
 int i2c_master_start (int ) ;
 int i2c_master_stop (int ) ;
 int i2c_master_write_byte (int ,int,int ) ;
 int i2c_port ;
 TYPE_4__ i2cget_args ;
 int* malloc (int) ;
 int portTICK_RATE_MS ;
 int printf (char*,...) ;
 int stderr ;

__attribute__((used)) static int do_i2cget_cmd(int argc, char **argv)
{
    int nerrors = arg_parse(argc, argv, (void **)&i2cget_args);
    if (nerrors != 0) {
        arg_print_errors(stderr, i2cget_args.end, argv[0]);
        return 0;
    }


    int chip_addr = i2cget_args.chip_address->ival[0];

    int data_addr = -1;
    if (i2cget_args.register_address->count) {
        data_addr = i2cget_args.register_address->ival[0];
    }

    int len = 1;
    if (i2cget_args.data_length->count) {
        len = i2cget_args.data_length->ival[0];
    }
    uint8_t *data = malloc(len);

    i2c_master_driver_initialize();
    i2c_driver_install(i2c_port, I2C_MODE_MASTER, I2C_MASTER_RX_BUF_DISABLE, I2C_MASTER_TX_BUF_DISABLE, 0);
    i2c_cmd_handle_t cmd = i2c_cmd_link_create();
    i2c_master_start(cmd);
    if (data_addr != -1) {
        i2c_master_write_byte(cmd, chip_addr << 1 | WRITE_BIT, ACK_CHECK_EN);
        i2c_master_write_byte(cmd, data_addr, ACK_CHECK_EN);
        i2c_master_start(cmd);
    }
    i2c_master_write_byte(cmd, chip_addr << 1 | READ_BIT, ACK_CHECK_EN);
    if (len > 1) {
        i2c_master_read(cmd, data, len - 1, ACK_VAL);
    }
    i2c_master_read_byte(cmd, data + len - 1, NACK_VAL);
    i2c_master_stop(cmd);
    esp_err_t ret = i2c_master_cmd_begin(i2c_port, cmd, 1000 / portTICK_RATE_MS);
    i2c_cmd_link_delete(cmd);
    if (ret == ESP_OK) {
        for (int i = 0; i < len; i++) {
            printf("0x%02x ", data[i]);
            if ((i + 1) % 16 == 0) {
                printf("\r\n");
            }
        }
        if (len % 16) {
            printf("\r\n");
        }
    } else if (ret == ESP_ERR_TIMEOUT) {
        ESP_LOGW(TAG, "Bus is busy");
    } else {
        ESP_LOGW(TAG, "Read failed");
    }
    free(data);
    i2c_driver_delete(i2c_port);
    return 0;
}
