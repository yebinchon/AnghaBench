
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int esp_efuse_utility_burn_efuses () ;

void esp_efuse_burn_new_values(void)
{
    esp_efuse_utility_burn_efuses();
}
