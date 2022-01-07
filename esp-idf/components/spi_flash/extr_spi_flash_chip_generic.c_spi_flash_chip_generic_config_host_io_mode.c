
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int read_mode; TYPE_2__* host; } ;
typedef TYPE_1__ esp_flash_t ;
typedef int esp_err_t ;
struct TYPE_5__ {int (* configure_host_io_mode ) (TYPE_2__*,int,int,int,int ) ;} ;


 int CMD_FASTRD ;
 int CMD_FASTRD_DIO ;
 int CMD_FASTRD_DUAL ;
 int CMD_FASTRD_QIO ;
 int CMD_FASTRD_QUAD ;
 int CMD_READ ;
 int ESP_ERR_FLASH_NOT_INITIALISED ;






 int stub1 (TYPE_2__*,int,int,int,int ) ;

esp_err_t spi_flash_chip_generic_config_host_io_mode(esp_flash_t *chip)
{
    uint32_t dummy_cyclelen_base;
    uint32_t addr_bitlen;
    uint32_t read_command;

    switch (chip->read_mode) {
    case 130:

        addr_bitlen = 32;
        dummy_cyclelen_base = 4;
        read_command = CMD_FASTRD_QIO;
        break;
    case 129:
        addr_bitlen = 24;
        dummy_cyclelen_base = 8;
        read_command = CMD_FASTRD_QUAD;
        break;
    case 133:

        addr_bitlen = 28;
        dummy_cyclelen_base = 2;
        read_command = CMD_FASTRD_DIO;
        break;
    case 132:
        addr_bitlen = 24;
        dummy_cyclelen_base = 8;
        read_command = CMD_FASTRD_DUAL;
        break;
    case 131:
        addr_bitlen = 24;
        dummy_cyclelen_base = 8;
        read_command = CMD_FASTRD;
        break;
    case 128:
        addr_bitlen = 24;
        dummy_cyclelen_base = 0;
        read_command = CMD_READ;
        break;
    default:
        return ESP_ERR_FLASH_NOT_INITIALISED;
    }

    return chip->host->configure_host_io_mode(chip->host, read_command, addr_bitlen, dummy_cyclelen_base,
                                                chip->read_mode);
}
