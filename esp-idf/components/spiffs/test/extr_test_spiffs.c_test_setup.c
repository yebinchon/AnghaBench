
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* base_path; int max_files; int format_if_mount_failed; int partition_label; } ;
typedef TYPE_1__ esp_vfs_spiffs_conf_t ;


 int TEST_ESP_OK (int ) ;
 int esp_vfs_spiffs_register (TYPE_1__*) ;
 int spiffs_test_partition_label ;

__attribute__((used)) static void test_setup(void)
{
    esp_vfs_spiffs_conf_t conf = {
      .base_path = "/spiffs",
      .partition_label = spiffs_test_partition_label,
      .max_files = 5,
      .format_if_mount_failed = 1
    };

    TEST_ESP_OK(esp_vfs_spiffs_register(&conf));
}
