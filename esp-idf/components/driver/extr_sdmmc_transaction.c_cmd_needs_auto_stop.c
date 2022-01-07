
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ datalen; scalar_t__ opcode; } ;
typedef TYPE_1__ sdmmc_command_t ;


 scalar_t__ MMC_READ_BLOCK_MULTIPLE ;
 scalar_t__ MMC_READ_DAT_UNTIL_STOP ;
 scalar_t__ MMC_WRITE_BLOCK_MULTIPLE ;
 scalar_t__ MMC_WRITE_DAT_UNTIL_STOP ;

__attribute__((used)) static bool cmd_needs_auto_stop(const sdmmc_command_t* cmd)
{

    return cmd->datalen > 0 &&
           (cmd->opcode == MMC_WRITE_BLOCK_MULTIPLE ||
            cmd->opcode == MMC_READ_BLOCK_MULTIPLE ||
            cmd->opcode == MMC_WRITE_DAT_UNTIL_STOP ||
            cmd->opcode == MMC_READ_DAT_UNTIL_STOP);
}
