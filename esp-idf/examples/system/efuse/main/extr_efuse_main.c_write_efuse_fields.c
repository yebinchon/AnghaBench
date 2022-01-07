
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ const esp_efuse_coding_scheme_t ;
struct TYPE_3__ {int custom_secure_version; int setting_2; int setting_1; int device_role; int module_version; } ;
typedef TYPE_1__ device_desc_t ;


 scalar_t__ EFUSE_CODING_SCHEME_3_4 ;
 scalar_t__ EFUSE_CODING_SCHEME_RS ;
 int ESP_EFUSE_CUSTOM_SECURE_VERSION ;
 int ESP_EFUSE_DEVICE_ROLE ;
 int ESP_EFUSE_MODULE_VERSION ;
 int ESP_EFUSE_SETTING_1 ;
 int ESP_EFUSE_SETTING_2 ;
 int ESP_ERROR_CHECK (int ) ;
 int ESP_LOGI (int ,char*) ;
 int TAG ;
 int esp_efuse_batch_write_begin () ;
 int esp_efuse_batch_write_commit () ;
 int esp_efuse_write_field_blob (int ,int *,int) ;
 int esp_efuse_write_field_cnt (int ,int ) ;

__attribute__((used)) static void write_efuse_fields(device_desc_t *desc, esp_efuse_coding_scheme_t coding_scheme)
{
}
