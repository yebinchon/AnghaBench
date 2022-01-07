
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


struct TYPE_15__ {int minor; int major; int service; } ;
typedef TYPE_3__ tBTA_UTL_COD ;
struct TYPE_16__ {int status; } ;
typedef TYPE_4__ tBTA_HF_CLIENT_REGISTER ;
struct TYPE_14__ {int features; int sec_mask; } ;
struct TYPE_17__ {TYPE_2__ api_register; } ;
typedef TYPE_5__ tBTA_HF_CLIENT_DATA ;
typedef int evt ;
struct TYPE_13__ {int features; int serv_sec_mask; } ;
struct TYPE_12__ {int (* p_cback ) (int ,TYPE_4__*) ;TYPE_1__ scb; } ;


 int BTA_HF_CLIENT_REGISTER_EVT ;
 int BTA_HF_CLIENT_SUCCESS ;
 int BTA_UTL_SET_COD_ALL ;
 int BTM_COD_MAJOR_AUDIO ;
 int BTM_COD_MINOR_CONFM_HANDSFREE ;
 int BTM_COD_SERVICE_AUDIO ;
 int bta_hf_client_at_init () ;
 TYPE_11__ bta_hf_client_cb ;
 int bta_hf_client_create_record (TYPE_5__*) ;
 int bta_hf_client_scb_init () ;
 int bta_hf_client_start_server () ;
 int memset (TYPE_4__*,int ,int) ;
 int stub1 (int ,TYPE_4__*) ;
 int utl_set_device_class (TYPE_3__*,int ) ;

void bta_hf_client_register(tBTA_HF_CLIENT_DATA *p_data)
{
    tBTA_HF_CLIENT_REGISTER evt;
    tBTA_UTL_COD cod;

    memset(&evt, 0, sizeof(evt));


    bta_hf_client_scb_init();

    bta_hf_client_cb.scb.serv_sec_mask = p_data->api_register.sec_mask;
    bta_hf_client_cb.scb.features = p_data->api_register.features;


    bta_hf_client_at_init();


    bta_hf_client_create_record(p_data);


    cod.service = BTM_COD_SERVICE_AUDIO;
    cod.major = BTM_COD_MAJOR_AUDIO;
    cod.minor = BTM_COD_MINOR_CONFM_HANDSFREE;
    utl_set_device_class(&cod, BTA_UTL_SET_COD_ALL);


    bta_hf_client_start_server();


    evt.status = BTA_HF_CLIENT_SUCCESS;
    (*bta_hf_client_cb.p_cback)(BTA_HF_CLIENT_REGISTER_EVT, &evt);
}
