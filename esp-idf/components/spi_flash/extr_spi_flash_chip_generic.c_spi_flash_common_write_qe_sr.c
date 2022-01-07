
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_6__ {int miso_len; int mosi_len; int mosi_data; int command; } ;
typedef TYPE_1__ spi_flash_trans_t ;
struct TYPE_7__ {TYPE_3__* host; } ;
typedef TYPE_2__ esp_flash_t ;
typedef int esp_err_t ;
struct TYPE_8__ {int (* common_command ) (TYPE_3__*,TYPE_1__*) ;} ;


 int stub1 (TYPE_3__*,TYPE_1__*) ;

__attribute__((used)) static esp_err_t spi_flash_common_write_qe_sr(esp_flash_t *chip, uint8_t qe_wrsr_command, uint8_t qe_sr_bitwidth, uint32_t qe)
{
    spi_flash_trans_t t = {
        .command = qe_wrsr_command,
        .mosi_data = qe,
        .mosi_len = qe_sr_bitwidth,
        .miso_len = 0,
    };
    return chip->host->common_command(chip->host, &t);
}
