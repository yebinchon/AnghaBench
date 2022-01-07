
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int host_id; } ;
typedef TYPE_1__ flashtest_config_t ;
typedef int (* flash_test_func_t ) (int *) ;
typedef int esp_flash_t ;


 TYPE_1__* config_list ;
 int setup_new_chip (TYPE_1__*,int **) ;
 int stub1 (int *) ;
 int teardown_test_chip (int *,int ) ;

__attribute__((used)) static void flash_test_func(flash_test_func_t func, int test_num)
{
    for (int i = 0; i < test_num; i++) {
        flashtest_config_t* config = &config_list[i];
        esp_flash_t* chip;
        setup_new_chip(config, &chip);
        (*func)(chip);
        teardown_test_chip(chip, config->host_id);
    }
}
