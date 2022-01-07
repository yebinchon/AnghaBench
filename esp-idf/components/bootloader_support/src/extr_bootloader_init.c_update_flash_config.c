
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int spi_size; } ;
typedef TYPE_1__ esp_image_header_t ;
struct TYPE_5__ {int device_id; } ;


 int Cache_Flush (int ) ;
 int Cache_Read_Disable (int ) ;
 int Cache_Read_Enable (int ) ;
 int Cache_Resume_ICache (int) ;
 int Cache_Suspend_ICache () ;





 int esp_rom_spiflash_config_param (int ,int,int,int,int,int) ;
 TYPE_3__ g_rom_flashchip ;

__attribute__((used)) static void update_flash_config(const esp_image_header_t *pfhdr)
{
    uint32_t size;
    switch (pfhdr->spi_size) {
    case 131:
        size = 1;
        break;
    case 130:
        size = 2;
        break;
    case 129:
        size = 4;
        break;
    case 128:
        size = 8;
        break;
    case 132:
        size = 16;
        break;
    default:
        size = 2;
    }






    esp_rom_spiflash_config_param(g_rom_flashchip.device_id, size * 0x100000, 0x10000, 0x1000, 0x100, 0xffff);
}
