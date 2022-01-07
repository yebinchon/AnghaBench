
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * pop; TYPE_2__ const* sec; int * sec_inst; } ;
typedef TYPE_1__ protocomm_t ;
struct TYPE_8__ {scalar_t__ (* init ) (int **) ;int (* cleanup ) (int *) ;} ;
typedef TYPE_2__ protocomm_security_t ;
typedef int protocomm_security_pop_t ;
typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_ERR_INVALID_ARG ;
 scalar_t__ ESP_ERR_INVALID_STATE ;
 scalar_t__ ESP_ERR_NO_MEM ;
 int ESP_LOGE (int ,char*) ;
 scalar_t__ ESP_OK ;
 int SEC_EP ;
 int TAG ;
 int * malloc (int) ;
 int memcpy (void*,int const*,int) ;
 scalar_t__ protocomm_add_endpoint_internal (TYPE_1__*,char const*,int ,void*,int ) ;
 int protocomm_common_security_handler ;
 int protocomm_remove_endpoint (TYPE_1__*,char const*) ;
 scalar_t__ stub1 (int **) ;
 int stub2 (int *) ;

esp_err_t protocomm_set_security(protocomm_t *pc, const char *ep_name,
                                 const protocomm_security_t *sec,
                                 const protocomm_security_pop_t *pop)
{
    if ((pc == ((void*)0)) || (ep_name == ((void*)0)) || (sec == ((void*)0))) {
        return ESP_ERR_INVALID_ARG;
    }

    if (pc->sec) {
        return ESP_ERR_INVALID_STATE;
    }

    esp_err_t ret = protocomm_add_endpoint_internal(pc, ep_name,
                                                    protocomm_common_security_handler,
                                                    (void *) pc, SEC_EP);
    if (ret != ESP_OK) {
        ESP_LOGE(TAG, "Error adding security endpoint");
        return ret;
    }

    if (sec->init) {
        ret = sec->init(&pc->sec_inst);
        if (ret != ESP_OK) {
            ESP_LOGE(TAG, "Error initializing security");
            protocomm_remove_endpoint(pc, ep_name);
            return ret;
        }
    }
    pc->sec = sec;

    if (pop) {
        pc->pop = malloc(sizeof(protocomm_security_pop_t));
        if (pc->pop == ((void*)0)) {
            ESP_LOGE(TAG, "Error allocating Proof of Possession");
            if (pc->sec && pc->sec->cleanup) {
                pc->sec->cleanup(pc->sec_inst);
                pc->sec_inst = ((void*)0);
                pc->sec = ((void*)0);
            }

            protocomm_remove_endpoint(pc, ep_name);
            return ESP_ERR_NO_MEM;
        }
        memcpy((void *)pc->pop, pop, sizeof(protocomm_security_pop_t));
    }
    return ESP_OK;
}
