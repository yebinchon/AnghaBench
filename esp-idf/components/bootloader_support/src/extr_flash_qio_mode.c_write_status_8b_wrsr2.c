
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_WRSR2 ;
 int execute_flash_command (int ,unsigned int,int,int ) ;

__attribute__((used)) static void write_status_8b_wrsr2(unsigned new_status)
{
    execute_flash_command(CMD_WRSR2, new_status, 8, 0);
}
