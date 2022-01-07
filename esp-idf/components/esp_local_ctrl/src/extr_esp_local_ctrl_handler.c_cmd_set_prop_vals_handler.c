
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_19__ {int size; int data; } ;
typedef TYPE_4__ uint32_t ;
typedef TYPE_4__ esp_local_ctrl_prop_val_t ;
typedef int esp_err_t ;
struct TYPE_21__ {int status; } ;
struct TYPE_20__ {TYPE_7__* resp_set_prop_vals; int payload_case; TYPE_3__* cmd_set_prop_vals; } ;
struct TYPE_18__ {size_t n_props; TYPE_2__** props; } ;
struct TYPE_16__ {int len; int data; } ;
struct TYPE_17__ {TYPE_1__ value; TYPE_4__ index; } ;
typedef TYPE_6__ LocalCtrlMessage ;


 int ESP_ERR_NO_MEM ;
 int ESP_LOGE (int ,char*) ;
 int ESP_OK ;
 int LOCAL_CTRL_MESSAGE__PAYLOAD_RESP_SET_PROP_VALS ;
 int RespSetPropertyValues ;
 int SAFE_ALLOCATION (int ,TYPE_7__*) ;
 int TAG ;
 TYPE_4__* calloc (size_t,int) ;
 int err_to_status (int ) ;
 int esp_local_ctrl_set_prop_values (size_t,TYPE_4__*,TYPE_4__*) ;
 int free (TYPE_4__*) ;
 TYPE_7__* resp_payload ;
 int resp_set_property_values__init (TYPE_7__*) ;

__attribute__((used)) static esp_err_t cmd_set_prop_vals_handler(LocalCtrlMessage *req,
                                           LocalCtrlMessage *resp, void **ctx)
{
    SAFE_ALLOCATION(RespSetPropertyValues, resp_payload);
    resp_set_property_values__init(resp_payload);

    uint32_t *idxs = calloc(req->cmd_set_prop_vals->n_props, sizeof(uint32_t));
    esp_local_ctrl_prop_val_t *vals = calloc(req->cmd_set_prop_vals->n_props,
                                             sizeof(esp_local_ctrl_prop_val_t));
    if (!idxs || !vals) {
        ESP_LOGE(TAG, "Failed to allocate memory for setting values");
        free(idxs);
        free(vals);
        return ESP_ERR_NO_MEM;
    }
    for (size_t i = 0; i < req->cmd_set_prop_vals->n_props; i++) {
        idxs[i] = req->cmd_set_prop_vals->props[i]->index;
        vals[i].data = req->cmd_set_prop_vals->props[i]->value.data;
        vals[i].size = req->cmd_set_prop_vals->props[i]->value.len;
    }

    esp_err_t ret = esp_local_ctrl_set_prop_values(req->cmd_set_prop_vals->n_props,
                                                   idxs, vals);
    resp_payload->status = err_to_status(ret);
    resp->payload_case = LOCAL_CTRL_MESSAGE__PAYLOAD_RESP_SET_PROP_VALS;
    resp->resp_set_prop_vals = resp_payload;
    free(idxs);
    free(vals);



    return ESP_OK;
}
