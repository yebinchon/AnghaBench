
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {void* uuid16; } ;
struct TYPE_8__ {void* len; TYPE_1__ uu; } ;
typedef TYPE_3__ tSDP_UUID ;
typedef int tSDP_DISCOVERY_DB ;
typedef int UINT8 ;
typedef int UINT16 ;
struct TYPE_7__ {scalar_t__ role; int * p_disc_db; int peer_addr; } ;
struct TYPE_9__ {TYPE_2__ scb; } ;
typedef scalar_t__ BOOLEAN ;


 int ATTR_ID_BT_PROFILE_DESC_LIST ;
 int ATTR_ID_PROTOCOL_DESC_LIST ;
 int ATTR_ID_SERVICE_CLASS_ID_LIST ;
 int ATTR_ID_SUPPORTED_FEATURES ;
 int BTA_HF_CLIENT_DISC_FAIL_EVT ;
 scalar_t__ BTA_HF_CLIENT_INT ;
 int BT_DEFAULT_BUFFER_SIZE ;
 scalar_t__ FALSE ;
 void* LEN_UUID_16 ;
 scalar_t__ SDP_InitDiscoveryDb (int *,int ,int,TYPE_3__*,int,int*) ;
 scalar_t__ SDP_ServiceSearchAttributeRequest (int ,int *,int ) ;
 void* UUID_SERVCLASS_AG_HANDSFREE ;
 TYPE_4__ bta_hf_client_cb ;
 int bta_hf_client_free_db (int *) ;
 int bta_hf_client_sdp_cback ;
 int bta_hf_client_sm_execute (int ,int *) ;
 scalar_t__ osi_malloc (int ) ;

void bta_hf_client_do_disc(void)
{
    tSDP_UUID uuid_list[2];
    UINT16 num_uuid = 1;
    UINT16 attr_list[4];
    UINT8 num_attr;
    BOOLEAN db_inited = FALSE;


    if (bta_hf_client_cb.scb.role == BTA_HF_CLIENT_INT) {
        attr_list[0] = ATTR_ID_SERVICE_CLASS_ID_LIST;
        attr_list[1] = ATTR_ID_PROTOCOL_DESC_LIST;
        attr_list[2] = ATTR_ID_BT_PROFILE_DESC_LIST;
        attr_list[3] = ATTR_ID_SUPPORTED_FEATURES;
        num_attr = 4;
        uuid_list[0].uu.uuid16 = UUID_SERVCLASS_AG_HANDSFREE;
    }

    else {
        attr_list[0] = ATTR_ID_SERVICE_CLASS_ID_LIST;
        attr_list[1] = ATTR_ID_BT_PROFILE_DESC_LIST;
        attr_list[2] = ATTR_ID_SUPPORTED_FEATURES;
        num_attr = 3;
        uuid_list[0].uu.uuid16 = UUID_SERVCLASS_AG_HANDSFREE;
    }


    bta_hf_client_cb.scb.p_disc_db = (tSDP_DISCOVERY_DB *) osi_malloc(BT_DEFAULT_BUFFER_SIZE);

    if (bta_hf_client_cb.scb.p_disc_db) {

        uuid_list[0].len = LEN_UUID_16;
        uuid_list[1].len = LEN_UUID_16;
        db_inited = SDP_InitDiscoveryDb(bta_hf_client_cb.scb.p_disc_db, BT_DEFAULT_BUFFER_SIZE, num_uuid,
                                        uuid_list, num_attr, attr_list);
    }

    if (db_inited) {

        db_inited = SDP_ServiceSearchAttributeRequest(bta_hf_client_cb.scb.peer_addr,
                    bta_hf_client_cb.scb.p_disc_db, bta_hf_client_sdp_cback);
    }

    if (!db_inited) {

        bta_hf_client_free_db(((void*)0));

        bta_hf_client_sm_execute(BTA_HF_CLIENT_DISC_FAIL_EVT, ((void*)0));
    }

}
