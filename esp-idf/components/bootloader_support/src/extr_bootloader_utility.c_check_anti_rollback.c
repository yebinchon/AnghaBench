
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int esp_partition_pos_t ;
typedef scalar_t__ esp_err_t ;
struct TYPE_3__ {int secure_version; } ;
typedef TYPE_1__ esp_app_desc_t ;


 scalar_t__ ESP_OK ;
 scalar_t__ bootloader_common_get_partition_description (int const*,TYPE_1__*) ;
 int esp_efuse_check_secure_version (int ) ;

__attribute__((used)) static bool check_anti_rollback(const esp_partition_pos_t *partition)
{





    return 1;

}
