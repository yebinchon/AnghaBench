
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int num_params; int * params; int protocol_uuid; } ;
typedef TYPE_1__ tSDP_PROTOCOL_ELEM ;
typedef int tBTA_HF_CLIENT_FEAT ;
typedef int UINT8 ;
typedef int UINT32 ;
typedef int UINT16 ;
typedef int BOOLEAN ;


 int APPL_TRACE_DEBUG (char*) ;
 int ATTR_ID_BROWSE_GROUP_LIST ;
 int ATTR_ID_SERVICE_NAME ;
 int ATTR_ID_SUPPORTED_FEATURES ;
 int BTA_HF_CLIENT_FEAT_3WAY ;
 int BTA_HF_CLIENT_FEAT_CLI ;
 int BTA_HF_CLIENT_FEAT_CODEC ;
 int BTA_HF_CLIENT_FEAT_ECNR ;
 int BTA_HF_CLIENT_FEAT_VOL ;
 int BTA_HF_CLIENT_FEAT_VREC ;
 int BTA_HF_CLIENT_NUM_PROTO_ELEMS ;
 int BTA_HF_CLIENT_NUM_SVC_ELEMS ;
 int HFP_VERSION_1_6 ;
 int SDP_AddAttribute (int,int ,int ,int,int *) ;
 int SDP_AddProfileDescriptorList (int,int,int) ;
 int SDP_AddProtocolList (int,int,TYPE_1__*) ;
 int SDP_AddServiceClassIdList (int,int,int*) ;
 int SDP_AddUuidSequence (int,int ,int,int*) ;
 int TEXT_STR_DESC_TYPE ;
 int TRUE ;
 int UINT16_TO_BE_FIELD (int *,int) ;
 int UINT_DESC_TYPE ;
 int UUID_PROTOCOL_L2CAP ;
 int UUID_PROTOCOL_RFCOMM ;
 int UUID_SERVCLASS_GENERIC_AUDIO ;
 int UUID_SERVCLASS_HF_HANDSFREE ;
 int UUID_SERVCLASS_PUBLIC_BROWSE_GROUP ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ strlen (char*) ;

BOOLEAN bta_hf_client_add_record(char *p_service_name, UINT8 scn,
                                 tBTA_HF_CLIENT_FEAT features, UINT32 sdp_handle)
{
    tSDP_PROTOCOL_ELEM proto_elem_list[BTA_HF_CLIENT_NUM_PROTO_ELEMS];
    UINT16 svc_class_id_list[BTA_HF_CLIENT_NUM_SVC_ELEMS];
    UINT16 browse_list[] = {UUID_SERVCLASS_PUBLIC_BROWSE_GROUP};
    UINT16 version;
    UINT16 profile_uuid;
    BOOLEAN result = TRUE;
    UINT8 buf[2];
    UINT16 sdp_features = 0;

    APPL_TRACE_DEBUG("bta_hf_client_add_record");

    memset( proto_elem_list, 0 , BTA_HF_CLIENT_NUM_PROTO_ELEMS * sizeof(tSDP_PROTOCOL_ELEM));


    proto_elem_list[0].protocol_uuid = UUID_PROTOCOL_L2CAP;
    proto_elem_list[0].num_params = 0;
    proto_elem_list[1].protocol_uuid = UUID_PROTOCOL_RFCOMM;
    proto_elem_list[1].num_params = 1;
    proto_elem_list[1].params[0] = scn;
    result &= SDP_AddProtocolList(sdp_handle, BTA_HF_CLIENT_NUM_PROTO_ELEMS, proto_elem_list);


    svc_class_id_list[0] = UUID_SERVCLASS_HF_HANDSFREE;
    svc_class_id_list[1] = UUID_SERVCLASS_GENERIC_AUDIO;
    result &= SDP_AddServiceClassIdList(sdp_handle, BTA_HF_CLIENT_NUM_SVC_ELEMS, svc_class_id_list);


    profile_uuid = UUID_SERVCLASS_HF_HANDSFREE;
    version = HFP_VERSION_1_6;

    result &= SDP_AddProfileDescriptorList(sdp_handle, profile_uuid, version);


    if (p_service_name != ((void*)0) && p_service_name[0] != 0) {
        result &= SDP_AddAttribute(sdp_handle, ATTR_ID_SERVICE_NAME, TEXT_STR_DESC_TYPE,
                                   (UINT32)(strlen(p_service_name) + 1), (UINT8 *) p_service_name);
    }


    if (features & BTA_HF_CLIENT_FEAT_ECNR) {
        sdp_features |= BTA_HF_CLIENT_FEAT_ECNR;
    }

    if (features & BTA_HF_CLIENT_FEAT_3WAY) {
        sdp_features |= BTA_HF_CLIENT_FEAT_3WAY;
    }

    if (features & BTA_HF_CLIENT_FEAT_CLI) {
        sdp_features |= BTA_HF_CLIENT_FEAT_CLI;
    }

    if (features & BTA_HF_CLIENT_FEAT_VREC) {
        sdp_features |= BTA_HF_CLIENT_FEAT_VREC;
    }

    if (features & BTA_HF_CLIENT_FEAT_VOL) {
        sdp_features |= BTA_HF_CLIENT_FEAT_VOL;
    }


    if (features & BTA_HF_CLIENT_FEAT_CODEC) {
        sdp_features |= 0x0020;
    }

    UINT16_TO_BE_FIELD(buf, sdp_features);
    result &= SDP_AddAttribute(sdp_handle, ATTR_ID_SUPPORTED_FEATURES, UINT_DESC_TYPE, 2, buf);


    result &= SDP_AddUuidSequence(sdp_handle, ATTR_ID_BROWSE_GROUP_LIST, 1, browse_list);

    return result;
}
