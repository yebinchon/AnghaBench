
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int int64_t ;
struct TYPE_5__ {int free_fn; int * data; int size; } ;
typedef TYPE_1__ esp_local_ctrl_prop_val_t ;
struct TYPE_6__ {int type; int * ctx; int name; } ;
typedef TYPE_2__ esp_local_ctrl_prop_t ;
typedef int esp_err_t ;


 int ESP_ERR_NO_MEM ;
 int ESP_LOGI (int ,char*,int ) ;
 int ESP_OK ;




 int TAG ;
 int esp_timer_get_time () ;
 int free ;
 int * strdup (char*) ;
 int strlen (char*) ;

__attribute__((used)) static esp_err_t get_property_values(size_t props_count,
                                     const esp_local_ctrl_prop_t props[],
                                     esp_local_ctrl_prop_val_t prop_values[],
                                     void *usr_ctx)
{
    for (uint32_t i = 0; i < props_count; i++) {
        ESP_LOGI(TAG, "Reading property : %s", props[i].name);



        switch (props[i].type) {
            case 130:
            case 131:



                prop_values[i].data = props[i].ctx;
                break;
            case 128: {

                static int64_t ts = 0;
                ts = esp_timer_get_time();



                prop_values[i].data = &ts;
                break;
            }
            case 129: {
                char **prop3_value = (char **) props[i].ctx;
                if (*prop3_value == ((void*)0)) {
                    prop_values[i].size = 0;
                    prop_values[i].data = ((void*)0);
                } else {



                    prop_values[i].size = strlen(*prop3_value);
                    prop_values[i].data = strdup(*prop3_value);
                    if (!prop_values[i].data) {
                        return ESP_ERR_NO_MEM;
                    }
                    prop_values[i].free_fn = free;
                }
            }
            default:
                break;
        }
    }
    return ESP_OK;
}
