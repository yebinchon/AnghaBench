
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int system; } ;
struct TYPE_5__ {TYPE_1__ directory; int path; } ;
typedef TYPE_2__ core_info_ctx_firmware_t ;


 int core_info_curr_list ;
 int core_info_list_update_missing_firmware_internal (int ,int ,int ,int*) ;

bool core_info_list_update_missing_firmware(core_info_ctx_firmware_t *info,
      bool *set_missing_bios)
{
   if (!info)
      return 0;
   return core_info_list_update_missing_firmware_internal(
         core_info_curr_list,
         info->path, info->directory.system,
         set_missing_bios);
}
