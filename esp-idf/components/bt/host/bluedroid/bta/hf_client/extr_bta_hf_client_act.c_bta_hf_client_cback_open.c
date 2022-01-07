
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int tBTA_HF_CLIENT_STATUS ;
struct TYPE_11__ {int bd_addr; int status; } ;
typedef TYPE_3__ tBTA_HF_CLIENT_OPEN ;
struct TYPE_9__ {int bd_addr; } ;
struct TYPE_12__ {TYPE_1__ api_open; } ;
typedef TYPE_4__ tBTA_HF_CLIENT_DATA ;
typedef int evt ;
struct TYPE_10__ {int peer_addr; } ;
struct TYPE_13__ {int (* p_cback ) (int ,TYPE_3__*) ;TYPE_2__ scb; } ;


 int BTA_HF_CLIENT_OPEN_EVT ;
 int bdcpy (int ,int ) ;
 TYPE_8__ bta_hf_client_cb ;
 int memset (TYPE_3__*,int ,int) ;
 int stub1 (int ,TYPE_3__*) ;

__attribute__((used)) static void bta_hf_client_cback_open(tBTA_HF_CLIENT_DATA *p_data, tBTA_HF_CLIENT_STATUS status)
{
    tBTA_HF_CLIENT_OPEN evt;

    memset(&evt, 0, sizeof(evt));


    evt.status = status;
    if (p_data) {

        bdcpy(evt.bd_addr, p_data->api_open.bd_addr);
    } else {
        bdcpy(evt.bd_addr, bta_hf_client_cb.scb.peer_addr);
    }

    (*bta_hf_client_cb.p_cback)(BTA_HF_CLIENT_OPEN_EVT, &evt);
}
