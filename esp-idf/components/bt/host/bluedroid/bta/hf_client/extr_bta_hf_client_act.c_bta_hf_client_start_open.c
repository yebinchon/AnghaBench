
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int sec_mask; int bd_addr; } ;
struct TYPE_8__ {TYPE_1__ api_open; } ;
typedef TYPE_3__ tBTA_HF_CLIENT_DATA ;
struct TYPE_7__ {int role; int peer_addr; int cli_sec_mask; } ;
struct TYPE_9__ {TYPE_2__ scb; } ;
typedef int BD_ADDR ;


 int BTA_HF_CLIENT_INT ;
 int BTA_ID_HS ;
 scalar_t__ PORT_IsOpening (int ) ;
 int bdcpy (int ,int ) ;
 TYPE_5__ bta_hf_client_cb ;
 int bta_hf_client_close_server () ;
 int bta_hf_client_collision_cback (int ,int ,int ,int ) ;
 int bta_hf_client_do_disc () ;

void bta_hf_client_start_open(tBTA_HF_CLIENT_DATA *p_data)
{
    BD_ADDR pending_bd_addr;


    if (p_data) {
        bdcpy(bta_hf_client_cb.scb.peer_addr, p_data->api_open.bd_addr);
        bta_hf_client_cb.scb.cli_sec_mask = p_data->api_open.sec_mask;
    }


    if (PORT_IsOpening (pending_bd_addr)) {



        bta_hf_client_collision_cback (0, BTA_ID_HS, 0, bta_hf_client_cb.scb.peer_addr);
        return;
    }


    bta_hf_client_close_server();


    bta_hf_client_cb.scb.role = BTA_HF_CLIENT_INT;


    bta_hf_client_do_disc();
}
