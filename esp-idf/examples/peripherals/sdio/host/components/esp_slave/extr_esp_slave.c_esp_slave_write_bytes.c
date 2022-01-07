
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {int card; } ;
typedef TYPE_1__ esp_slave_context_t ;
typedef int esp_err_t ;


 int sdmmc_io_write_bytes (int ,int,int,int *,int) ;

__attribute__((used)) static inline esp_err_t esp_slave_write_bytes(esp_slave_context_t *context, uint32_t addr, uint8_t *val, int len)
{
   return sdmmc_io_write_bytes(context->card, 1, addr&0x3FF, val, len);
}
