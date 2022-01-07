
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_2__ {scalar_t__ token_id; scalar_t__ token_value; scalar_t__ cmd; scalar_t__ on; } ;
typedef TYPE_1__ mesh_light_ctl_t ;
typedef int mesh_addr_t ;
typedef int esp_err_t ;


 int ESP_FAIL ;
 int ESP_OK ;
 scalar_t__ MESH_CONTROL_CMD ;
 scalar_t__ MESH_TOKEN_ID ;
 scalar_t__ MESH_TOKEN_VALUE ;
 int esp_mesh_get_layer () ;
 int mesh_connected_indicator (int ) ;
 int mesh_light_set (int ) ;

esp_err_t mesh_light_process(mesh_addr_t *from, uint8_t *buf, uint16_t len)
{
    mesh_light_ctl_t *in = (mesh_light_ctl_t *) buf;
    if (!from || !buf || len < sizeof(mesh_light_ctl_t)) {
        return ESP_FAIL;
    }
    if (in->token_id != MESH_TOKEN_ID || in->token_value != MESH_TOKEN_VALUE) {
        return ESP_FAIL;
    }
    if (in->cmd == MESH_CONTROL_CMD) {
        if (in->on) {
            mesh_connected_indicator(esp_mesh_get_layer());
        } else {
            mesh_light_set(0);
        }
    }
    return ESP_OK;
}
