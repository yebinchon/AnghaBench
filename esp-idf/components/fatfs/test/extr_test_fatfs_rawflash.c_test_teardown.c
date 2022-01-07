
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST_ESP_OK (int ) ;
 int esp_vfs_fat_rawflash_unmount (char*,char*) ;

__attribute__((used)) static void test_teardown(void)
{
    TEST_ESP_OK(esp_vfs_fat_rawflash_unmount("/spiflash","flash_test"));
}
