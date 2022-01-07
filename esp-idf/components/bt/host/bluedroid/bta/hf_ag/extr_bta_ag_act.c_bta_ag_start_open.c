
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int open_services; int role; int reg_services; int peer_addr; int cli_sec_mask; } ;
typedef TYPE_2__ tBTA_AG_SCB ;
struct TYPE_8__ {int sec_mask; int services; int bd_addr; } ;
struct TYPE_10__ {TYPE_1__ api_open; } ;
typedef TYPE_3__ tBTA_AG_DATA ;
typedef int BD_ADDR ;


 int BTA_AG_INT ;
 int BTA_ID_AG ;
 scalar_t__ PORT_IsOpening (int ) ;
 int bdcpy (int ,int ) ;
 int bta_ag_close_servers (TYPE_2__*,int ) ;
 int bta_ag_collision_cback (int ,int ,int ,int ) ;
 int bta_ag_do_disc (TYPE_2__*,int ) ;

void bta_ag_start_open(tBTA_AG_SCB *p_scb, tBTA_AG_DATA *p_data)
{
    BD_ADDR pending_bd_addr;

    if (p_data) {
        bdcpy(p_scb->peer_addr, p_data->api_open.bd_addr);
        p_scb->open_services = p_data->api_open.services;
        p_scb->cli_sec_mask = p_data->api_open.sec_mask;
    }

    if (PORT_IsOpening (pending_bd_addr)) {



        bta_ag_collision_cback (0, BTA_ID_AG, 0, p_scb->peer_addr);
        return;
    }

    bta_ag_close_servers(p_scb, p_scb->reg_services);

    p_scb->role = BTA_AG_INT;

    bta_ag_do_disc(p_scb, p_scb->open_services);
}
