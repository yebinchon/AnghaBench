
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int esp_err_t ;
struct TYPE_8__ {size_t count; int status; } ;
struct TYPE_7__ {TYPE_2__* resp_get_prop_count; int payload_case; } ;
typedef TYPE_1__ LocalCtrlMessage ;


 int ESP_LOGD (int ,char*,size_t) ;
 int ESP_OK ;
 int LOCAL_CTRL_MESSAGE__PAYLOAD_RESP_GET_PROP_COUNT ;
 int RespGetPropertyCount ;
 int SAFE_ALLOCATION (int ,TYPE_2__*) ;
 int TAG ;
 int err_to_status (int ) ;
 int esp_local_ctrl_get_prop_count (size_t*) ;
 int resp_get_property_count__init (TYPE_2__*) ;
 TYPE_2__* resp_payload ;

__attribute__((used)) static esp_err_t cmd_get_prop_count_handler(LocalCtrlMessage *req,
                                            LocalCtrlMessage *resp, void **ctx)
{
    SAFE_ALLOCATION(RespGetPropertyCount, resp_payload);
    resp_get_property_count__init(resp_payload);

    size_t prop_count = 0;
    resp_payload->status = err_to_status(esp_local_ctrl_get_prop_count(&prop_count));
    resp_payload->count = prop_count;
    resp->payload_case = LOCAL_CTRL_MESSAGE__PAYLOAD_RESP_GET_PROP_COUNT;
    resp->resp_get_prop_count = resp_payload;
    ESP_LOGD(TAG, "Got properties count %d", prop_count);
    return ESP_OK;
}
