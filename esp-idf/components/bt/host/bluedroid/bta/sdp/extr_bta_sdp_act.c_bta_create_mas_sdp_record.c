
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_15__ {int * params; } ;
typedef TYPE_5__ tSDP_PROTOCOL_ELEM ;
typedef int tSDP_DISC_REC ;
struct TYPE_13__ {int u32; int u16; scalar_t__ array; int u8; } ;
struct TYPE_14__ {TYPE_3__ v; } ;
struct TYPE_16__ {TYPE_4__ attr_value; int attr_len_type; } ;
typedef TYPE_6__ tSDP_DISC_ATTR ;
struct TYPE_11__ {char* service_name; int l2cap_psm; int profile_version; int rfcomm_channel_number; int service_name_length; int type; } ;
struct TYPE_12__ {int supported_features; TYPE_1__ hdr; int supported_message_types; int mas_instance_id; } ;
struct TYPE_17__ {TYPE_2__ mas; } ;
typedef TYPE_7__ bluetooth_sdp_record ;
typedef int UINT16 ;


 int ATTR_ID_GOEP_L2CAP_PSM ;
 int ATTR_ID_MAP_SUPPORTED_FEATURES ;
 int ATTR_ID_MAS_INSTANCE_ID ;
 int ATTR_ID_SERVICE_NAME ;
 int ATTR_ID_SUPPORTED_MSG_TYPE ;
 int SDP_DISC_ATTR_LEN (int ) ;
 TYPE_6__* SDP_FindAttributeInRec (int *,int ) ;
 scalar_t__ SDP_FindProfileVersionInRec (int *,int ,int*) ;
 scalar_t__ SDP_FindProtocolListElemInRec (int *,int ,TYPE_5__*) ;
 int SDP_TYPE_MAP_MAS ;
 int UUID_PROTOCOL_RFCOMM ;
 int UUID_SERVCLASS_MAP_PROFILE ;

__attribute__((used)) static void bta_create_mas_sdp_record(bluetooth_sdp_record *record, tSDP_DISC_REC *p_rec)
{
    tSDP_DISC_ATTR *p_attr;
    tSDP_PROTOCOL_ELEM pe;
    UINT16 pversion = -1;

    record->mas.hdr.type = SDP_TYPE_MAP_MAS;
    record->mas.hdr.service_name_length = 0;
    record->mas.hdr.service_name = ((void*)0);
    record->mas.hdr.rfcomm_channel_number = 0;
    record->mas.hdr.l2cap_psm = -1;
    record->mas.hdr.profile_version = 0;
    record->mas.mas_instance_id = 0;
    record->mas.supported_features = 0x0000001F;
    record->mas.supported_message_types = 0;

    if ((p_attr = SDP_FindAttributeInRec(p_rec, ATTR_ID_MAS_INSTANCE_ID)) != ((void*)0)) {
        record->mas.mas_instance_id = p_attr->attr_value.v.u8;
    }

    if ((p_attr = SDP_FindAttributeInRec(p_rec, ATTR_ID_SUPPORTED_MSG_TYPE)) != ((void*)0)) {
        record->mas.supported_message_types = p_attr->attr_value.v.u8;
    }

    if ((p_attr = SDP_FindAttributeInRec(p_rec, ATTR_ID_MAP_SUPPORTED_FEATURES)) != ((void*)0)) {
        record->mas.supported_features = p_attr->attr_value.v.u32;
    }

    if ((p_attr = SDP_FindAttributeInRec(p_rec, ATTR_ID_SERVICE_NAME)) != ((void*)0)) {
        record->mas.hdr.service_name_length = SDP_DISC_ATTR_LEN(p_attr->attr_len_type);
        record->mas.hdr.service_name = (char *)p_attr->attr_value.v.array;
    }

    if (SDP_FindProfileVersionInRec(p_rec, UUID_SERVCLASS_MAP_PROFILE, &pversion)) {
        record->mas.hdr.profile_version = pversion;
    }

    if (SDP_FindProtocolListElemInRec(p_rec, UUID_PROTOCOL_RFCOMM, &pe)) {
        record->mas.hdr.rfcomm_channel_number = pe.params[0];
    }

    if ((p_attr = SDP_FindAttributeInRec(p_rec, ATTR_ID_GOEP_L2CAP_PSM)) != ((void*)0)) {
        record->mas.hdr.l2cap_psm = p_attr->attr_value.v.u16;
    }
}
