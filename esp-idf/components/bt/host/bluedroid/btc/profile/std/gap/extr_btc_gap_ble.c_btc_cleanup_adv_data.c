
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_18__ {int p_val; } ;
typedef TYPE_8__ tBTA_BLE_PROP_ELEM ;
struct TYPE_19__ {int p_sol_service_128b; TYPE_7__* p_sol_service_32b; TYPE_6__* p_sol_services; TYPE_5__* p_service_32b; int p_services_128b; TYPE_4__* p_service_data; TYPE_3__* p_services; TYPE_2__* p_proprietary; TYPE_1__* p_manu; } ;
typedef TYPE_9__ tBTA_BLE_ADV_DATA ;
struct TYPE_17__ {int p_uuid; } ;
struct TYPE_16__ {int p_uuid; } ;
struct TYPE_15__ {int p_uuid; } ;
struct TYPE_14__ {int p_val; } ;
struct TYPE_13__ {int p_uuid; } ;
struct TYPE_12__ {TYPE_8__* p_elem; int num_elem; } ;
struct TYPE_11__ {int p_val; } ;


 int btc_gap_adv_point_cleanup (void**) ;

__attribute__((used)) static void btc_cleanup_adv_data(tBTA_BLE_ADV_DATA *bta_adv_data)
{
    if (bta_adv_data == ((void*)0)) {
        return;
    }


    if (bta_adv_data->p_manu != ((void*)0)) {
        btc_gap_adv_point_cleanup((void **) &bta_adv_data->p_manu->p_val);
        btc_gap_adv_point_cleanup((void **) &bta_adv_data->p_manu);
    }


    if (bta_adv_data->p_proprietary != ((void*)0)) {
        int i = 0;
        tBTA_BLE_PROP_ELEM *p_elem = bta_adv_data->p_proprietary->p_elem;
        while (i++ != bta_adv_data->p_proprietary->num_elem
                && p_elem) {
            btc_gap_adv_point_cleanup((void **) &p_elem->p_val);
            ++p_elem;
        }

        btc_gap_adv_point_cleanup((void **) &bta_adv_data->p_proprietary->p_elem);
        btc_gap_adv_point_cleanup((void **) &bta_adv_data->p_proprietary);
    }


    if (bta_adv_data->p_services != ((void*)0)) {
        btc_gap_adv_point_cleanup((void **) &bta_adv_data->p_services->p_uuid);
        btc_gap_adv_point_cleanup((void **) &bta_adv_data->p_services);
    }


    if (bta_adv_data->p_service_data != ((void*)0)) {
        btc_gap_adv_point_cleanup((void **) &bta_adv_data->p_service_data->p_val);
        btc_gap_adv_point_cleanup((void **) &bta_adv_data->p_service_data);
    }

    btc_gap_adv_point_cleanup((void **) &bta_adv_data->p_services_128b);

    if (bta_adv_data->p_service_32b != ((void*)0)) {
        btc_gap_adv_point_cleanup((void **) &bta_adv_data->p_service_32b->p_uuid);
        btc_gap_adv_point_cleanup((void **) &bta_adv_data->p_service_32b);
    }

    if (bta_adv_data->p_sol_services != ((void*)0)) {
        btc_gap_adv_point_cleanup((void **) &bta_adv_data->p_sol_services->p_uuid);
        btc_gap_adv_point_cleanup((void **) &bta_adv_data->p_sol_services);
    }

    if (bta_adv_data->p_sol_service_32b != ((void*)0)) {
        btc_gap_adv_point_cleanup((void **) &bta_adv_data->p_sol_service_32b->p_uuid);
        btc_gap_adv_point_cleanup((void **) &bta_adv_data->p_sol_service_32b);
    }

    btc_gap_adv_point_cleanup((void **) &bta_adv_data->p_sol_service_128b);
}
