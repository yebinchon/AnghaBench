
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {scalar_t__ (* add_endpoint ) (char const*,int *,void*) ;int endpoints; } ;
typedef TYPE_1__ protocomm_t ;
typedef int * protocomm_req_handler_t ;
struct TYPE_8__ {char const* ep_name; int flag; void* priv_data; int * req_handler; } ;
typedef TYPE_2__ protocomm_ep_t ;
typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_ERR_INVALID_ARG ;
 scalar_t__ ESP_ERR_NO_MEM ;
 scalar_t__ ESP_FAIL ;
 int ESP_LOGE (int ,char*) ;
 scalar_t__ ESP_OK ;
 int SLIST_INSERT_HEAD (int *,TYPE_2__*,int ) ;
 int TAG ;
 scalar_t__ calloc (int,int) ;
 int next ;
 TYPE_2__* search_endpoint (TYPE_1__*,char const*) ;
 scalar_t__ stub1 (char const*,int *,void*) ;

__attribute__((used)) static esp_err_t protocomm_add_endpoint_internal(protocomm_t *pc, const char *ep_name,
                                                 protocomm_req_handler_t h, void *priv_data,
                                                 uint32_t flag)
{
    if ((pc == ((void*)0)) || (ep_name == ((void*)0)) || (h == ((void*)0))) {
        return ESP_ERR_INVALID_ARG;
    }

    protocomm_ep_t *ep;
    esp_err_t ret;

    ep = search_endpoint(pc, ep_name);
    if (ep) {
        ESP_LOGE(TAG, "Endpoint with this name already exists");
        return ESP_FAIL;
    }

    if (pc->add_endpoint) {
        ret = pc->add_endpoint(ep_name, h, priv_data);
        if (ret != ESP_OK) {
            ESP_LOGE(TAG, "Error adding endpoint");
            return ret;
        }
    }

    ep = (protocomm_ep_t *) calloc(1, sizeof(protocomm_ep_t));
    if (!ep) {
        ESP_LOGE(TAG, "Error allocating endpoint resource");
        return ESP_ERR_NO_MEM;
    }


    ep->ep_name = ep_name;
    ep->req_handler = h;
    ep->priv_data = priv_data;
    ep->flag = flag;


    SLIST_INSERT_HEAD(&pc->endpoints, ep, next);

    return ESP_OK;
}
