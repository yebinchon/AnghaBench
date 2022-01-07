
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int bt_mesh_output_action_t ;


 int ESP_LOGI (int ,char*,int ) ;
 int tag ;

__attribute__((used)) static int output_number(bt_mesh_output_action_t action, uint32_t number)
{
    ESP_LOGI(tag, "OOB Number: %u\n", number);

    return 0;
}
