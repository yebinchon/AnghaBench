
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int CMD_OTPEN ;
 int CMD_RDSR ;
 int CMD_WRDI ;
 int esp_rom_spiflash_wait_idle (int *) ;
 int execute_flash_command (int ,int ,int ,int) ;
 int g_rom_flashchip ;

__attribute__((used)) static unsigned read_status_8b_xmc25qu64a(void)
{
    execute_flash_command(CMD_OTPEN, 0, 0, 0);
    esp_rom_spiflash_wait_idle(&g_rom_flashchip);
    uint32_t read_status = execute_flash_command(CMD_RDSR, 0, 0, 8);
    execute_flash_command(CMD_WRDI, 0, 0, 0);
    return read_status;
}
