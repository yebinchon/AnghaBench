
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_OTPEN ;
 int CMD_WRDI ;
 int CMD_WRSR ;
 int esp_rom_spiflash_wait_idle (int *) ;
 int execute_flash_command (int ,unsigned int,int,int ) ;
 int g_rom_flashchip ;

__attribute__((used)) static void write_status_8b_xmc25qu64a(unsigned new_status)
{
    execute_flash_command(CMD_OTPEN, 0, 0, 0);
    esp_rom_spiflash_wait_idle(&g_rom_flashchip);
    execute_flash_command(CMD_WRSR, new_status, 8, 0);
    esp_rom_spiflash_wait_idle(&g_rom_flashchip);
    execute_flash_command(CMD_WRDI, 0, 0, 0);
}
