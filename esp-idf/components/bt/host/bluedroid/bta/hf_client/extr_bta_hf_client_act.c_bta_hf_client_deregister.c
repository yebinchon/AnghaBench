
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int service; } ;
typedef TYPE_2__ tBTA_UTL_COD ;
typedef int tBTA_HF_CLIENT_DATA ;
struct TYPE_5__ {int deregister; } ;
struct TYPE_7__ {TYPE_1__ scb; } ;


 int BTA_UTL_CLR_COD_SERVICE_CLASS ;
 int BTM_COD_SERVICE_AUDIO ;
 int TRUE ;
 TYPE_4__ bta_hf_client_cb ;
 int bta_hf_client_close_server () ;
 int bta_hf_client_del_record (int *) ;
 int bta_hf_client_scb_disable () ;
 int utl_set_device_class (TYPE_2__*,int ) ;

void bta_hf_client_deregister(tBTA_HF_CLIENT_DATA *p_data)
{
    tBTA_UTL_COD cod;

    bta_hf_client_cb.scb.deregister = TRUE;


    cod.service = BTM_COD_SERVICE_AUDIO;
    utl_set_device_class(&cod, BTA_UTL_CLR_COD_SERVICE_CLASS);


    bta_hf_client_del_record(p_data);


    bta_hf_client_close_server();


    bta_hf_client_scb_disable();
}
