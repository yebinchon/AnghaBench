
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST_ESP_OK (int ) ;
 int esp_vfs_fat_spiflash_unmount (char*,int ) ;
 int s_test_wl_handle ;

__attribute__((used)) static void test_teardown(void)
{
    TEST_ESP_OK(esp_vfs_fat_spiflash_unmount("/spiflash", s_test_wl_handle));
}
