
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int tBTA_SERVICE_MASK ;
struct TYPE_10__ {int reg_services; int hsp_version; } ;
typedef TYPE_3__ tBTA_AG_SCB ;
struct TYPE_8__ {int features; int * p_name; } ;
struct TYPE_11__ {TYPE_1__ api_register; } ;
typedef TYPE_4__ tBTA_AG_DATA ;
struct TYPE_12__ {TYPE_2__* profile; } ;
struct TYPE_9__ {scalar_t__ sdp_handle; int scn; } ;


 int BTA_AG_NUM_IDX ;
 int BTA_HSP_SERVICE_ID ;
 int BTM_AllocateSCN () ;
 int HSP_VERSION_1_2 ;
 scalar_t__ SDP_CreateRecord () ;
 int bta_ag_add_record (int ,int ,int ,int ,scalar_t__) ;
 TYPE_7__ bta_ag_cb ;
 int * bta_ag_uuid ;
 int bta_sys_add_uuid (int ) ;

void bta_ag_create_records(tBTA_AG_SCB *p_scb, tBTA_AG_DATA *p_data)
{
    tBTA_SERVICE_MASK services;
    services = p_scb->reg_services >> BTA_HSP_SERVICE_ID;

    for (int i = 0; i < BTA_AG_NUM_IDX && services != 0; i++, services >>= 1) {

        if (services & 1) {

            if (bta_ag_cb.profile[i].sdp_handle == 0) {
                bta_ag_cb.profile[i].sdp_handle = SDP_CreateRecord();
                bta_ag_cb.profile[i].scn = BTM_AllocateSCN();
                bta_ag_add_record(bta_ag_uuid[i], p_data->api_register.p_name[i],
                    bta_ag_cb.profile[i].scn, p_data->api_register.features,
                    bta_ag_cb.profile[i].sdp_handle);
                bta_sys_add_uuid(bta_ag_uuid[i]);
            }
        }
    }
    p_scb->hsp_version = HSP_VERSION_1_2;
}
