
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_RDSR ;
 int CMD_RDSR2 ;
 int execute_flash_command (int ,int ,int ,int) ;

__attribute__((used)) static unsigned read_status_16b_rdsr_rdsr2(void)
{
    return execute_flash_command(CMD_RDSR, 0, 0, 8) | (execute_flash_command(CMD_RDSR2, 0, 0, 8) << 8);
}
