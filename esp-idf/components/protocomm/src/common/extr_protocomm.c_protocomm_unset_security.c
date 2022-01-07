
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * pop; TYPE_1__* sec; int * sec_inst; } ;
typedef TYPE_2__ protocomm_t ;
typedef int esp_err_t ;
struct TYPE_5__ {int (* cleanup ) (int *) ;} ;


 int ESP_FAIL ;
 int free (int *) ;
 int protocomm_remove_endpoint (TYPE_2__*,char const*) ;
 int stub1 (int *) ;

esp_err_t protocomm_unset_security(protocomm_t *pc, const char *ep_name)
{
    if ((pc == ((void*)0)) || (ep_name == ((void*)0))) {
        return ESP_FAIL;
    }

    if (pc->sec && pc->sec->cleanup) {
        pc->sec->cleanup(pc->sec_inst);
        pc->sec_inst = ((void*)0);
        pc->sec = ((void*)0);
    }

    if (pc->pop) {
        free(pc->pop);
        pc->pop = ((void*)0);
    }

    return protocomm_remove_endpoint(pc, ep_name);
}
