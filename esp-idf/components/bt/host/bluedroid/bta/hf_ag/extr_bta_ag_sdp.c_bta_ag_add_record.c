
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int num_params; int* params; int protocol_uuid; } ;
typedef TYPE_1__ tSDP_PROTOCOL_ELEM ;
typedef int tBTA_AG_FEAT ;
typedef int UINT8 ;
typedef int UINT32 ;
typedef scalar_t__ UINT16 ;
typedef scalar_t__ BOOLEAN ;


 int APPL_TRACE_DEBUG (char*,scalar_t__) ;
 int ATTR_ID_BROWSE_GROUP_LIST ;
 int ATTR_ID_DATA_STORES_OR_NETWORK ;
 int ATTR_ID_SERVICE_NAME ;
 int ATTR_ID_SUPPORTED_FEATURES ;
 int BTA_AG_FEAT_CODEC ;
 int BTA_AG_FEAT_REJECT ;
 int BTA_AG_NUM_PROTO_ELEMS ;
 int BTA_AG_NUM_SVC_ELEMS ;
 int BTA_AG_SDP_FEAT_SPEC ;
 scalar_t__ FALSE ;
 scalar_t__ HFP_VERSION_1_6 ;
 scalar_t__ HSP_VERSION_1_2 ;
 scalar_t__ SDP_AddAttribute (int,int ,int ,int,int*) ;
 scalar_t__ SDP_AddProfileDescriptorList (int,scalar_t__,scalar_t__) ;
 scalar_t__ SDP_AddProtocolList (int,int,TYPE_1__*) ;
 scalar_t__ SDP_AddServiceClassIdList (int,int,scalar_t__*) ;
 scalar_t__ SDP_AddUuidSequence (int,int ,int,scalar_t__*) ;
 int TEXT_STR_DESC_TYPE ;
 scalar_t__ TRUE ;
 int UINT16_TO_BE_FIELD (int*,int) ;
 int UINT_DESC_TYPE ;
 int UUID_PROTOCOL_L2CAP ;
 int UUID_PROTOCOL_RFCOMM ;
 scalar_t__ UUID_SERVCLASS_AG_HANDSFREE ;
 scalar_t__ UUID_SERVCLASS_GENERIC_AUDIO ;
 scalar_t__ UUID_SERVCLASS_HEADSET ;
 scalar_t__ UUID_SERVCLASS_HF_HANDSFREE ;
 scalar_t__ UUID_SERVCLASS_PUBLIC_BROWSE_GROUP ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ strlen (char*) ;

BOOLEAN bta_ag_add_record(UINT16 service_uuid, char *p_service_name, UINT8 scn,
                          tBTA_AG_FEAT features, UINT32 sdp_handle)
{
    tSDP_PROTOCOL_ELEM proto_elem_list[BTA_AG_NUM_PROTO_ELEMS];
    UINT16 svc_class_id_list[BTA_AG_NUM_SVC_ELEMS];
    UINT16 browse_list[] = {UUID_SERVCLASS_PUBLIC_BROWSE_GROUP};
    UINT16 version;
    UINT16 profile_uuid;
    UINT8 network;
    BOOLEAN result = TRUE;
    BOOLEAN codec_supported = FALSE;
    UINT8 buf[2];

    APPL_TRACE_DEBUG("bta_ag_add_record uuid: %x", service_uuid);

    memset( proto_elem_list, 0 , BTA_AG_NUM_PROTO_ELEMS*sizeof(tSDP_PROTOCOL_ELEM));

    proto_elem_list[0].protocol_uuid = UUID_PROTOCOL_L2CAP;
    proto_elem_list[0].num_params = 0;
    proto_elem_list[1].protocol_uuid = UUID_PROTOCOL_RFCOMM;
    proto_elem_list[1].num_params = 1;
    proto_elem_list[1].params[0] = scn;
    result &= SDP_AddProtocolList(sdp_handle, BTA_AG_NUM_PROTO_ELEMS, proto_elem_list);


    svc_class_id_list[0] = service_uuid;
    svc_class_id_list[1] = UUID_SERVCLASS_GENERIC_AUDIO;
    result &= SDP_AddServiceClassIdList(sdp_handle, BTA_AG_NUM_SVC_ELEMS, svc_class_id_list);


    if (service_uuid == UUID_SERVCLASS_AG_HANDSFREE) {
        profile_uuid = UUID_SERVCLASS_HF_HANDSFREE;
        version = HFP_VERSION_1_6;
    } else {
        profile_uuid = UUID_SERVCLASS_HEADSET;
        version = HSP_VERSION_1_2;
    }
    result &= SDP_AddProfileDescriptorList(sdp_handle, profile_uuid, version);


    if (p_service_name != ((void*)0) && p_service_name[0] != 0) {
        result &= SDP_AddAttribute(sdp_handle, ATTR_ID_SERVICE_NAME, TEXT_STR_DESC_TYPE,
                    (UINT32)(strlen(p_service_name)+1), (UINT8 *) p_service_name);
    }


    if (service_uuid == UUID_SERVCLASS_AG_HANDSFREE) {
        network = (features & BTA_AG_FEAT_REJECT) ? 1 : 0;
        result &= SDP_AddAttribute(sdp_handle, ATTR_ID_DATA_STORES_OR_NETWORK,
                    UINT_DESC_TYPE, 1, &network);

        if (features & BTA_AG_FEAT_CODEC) {
            codec_supported = TRUE;
        }
        features &= BTA_AG_SDP_FEAT_SPEC;

        if (codec_supported) {
            features |= 0x0020;
        }
        UINT16_TO_BE_FIELD(buf, features);
        result &= SDP_AddAttribute(sdp_handle, ATTR_ID_SUPPORTED_FEATURES, UINT_DESC_TYPE, 2, buf);
    }

    result &= SDP_AddUuidSequence(sdp_handle, ATTR_ID_BROWSE_GROUP_LIST, 1, browse_list);
    return result;
}
