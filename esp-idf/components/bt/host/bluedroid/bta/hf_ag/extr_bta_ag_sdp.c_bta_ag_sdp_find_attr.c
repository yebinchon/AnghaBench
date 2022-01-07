
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__* params; } ;
typedef TYPE_3__ tSDP_PROTOCOL_ELEM ;
typedef int tSDP_DISC_REC ;
struct TYPE_9__ {scalar_t__ u8; int u16; } ;
struct TYPE_10__ {TYPE_1__ v; } ;
struct TYPE_12__ {TYPE_2__ attr_value; } ;
typedef TYPE_4__ tSDP_DISC_ATTR ;
typedef int tBTA_SERVICE_MASK ;
struct TYPE_13__ {int peer_version; scalar_t__ role; int peer_features; scalar_t__ peer_scn; int p_disc_db; } ;
typedef TYPE_5__ tBTA_AG_SCB ;
typedef scalar_t__ UINT8 ;
typedef scalar_t__ UINT16 ;
typedef scalar_t__ BOOLEAN ;


 int ATTR_ID_REMOTE_AUDIO_VOLUME_CONTROL ;
 int ATTR_ID_SUPPORTED_FEATURES ;
 scalar_t__ BTA_AG_INT ;
 int BTA_AG_PEER_FEAT_VOL ;
 int BTA_HFP_SERVICE_MASK ;
 int BTA_HSP_SERVICE_MASK ;
 scalar_t__ FALSE ;
 int HFP_VERSION_1_1 ;
 TYPE_4__* SDP_FindAttributeInRec (int *,int ) ;
 int SDP_FindProfileVersionInRec (int *,scalar_t__,int*) ;
 scalar_t__ SDP_FindProtocolListElemInRec (int *,int ,TYPE_3__*) ;
 int * SDP_FindServiceInDb (int ,scalar_t__,int *) ;
 scalar_t__ TRUE ;
 int UUID_PROTOCOL_RFCOMM ;
 scalar_t__ UUID_SERVCLASS_HEADSET ;
 scalar_t__ UUID_SERVCLASS_HEADSET_HS ;
 scalar_t__ UUID_SERVCLASS_HF_HANDSFREE ;

BOOLEAN bta_ag_sdp_find_attr(tBTA_AG_SCB *p_scb, tBTA_SERVICE_MASK service)
{
    tSDP_DISC_REC *p_rec = ((void*)0);
    tSDP_DISC_ATTR *p_attr;
    tSDP_PROTOCOL_ELEM pe;
    UINT16 uuid;
    BOOLEAN result = FALSE;

    if (service & BTA_HFP_SERVICE_MASK) {
        uuid = UUID_SERVCLASS_HF_HANDSFREE;
        p_scb->peer_version = HFP_VERSION_1_1;
    } else if (service & BTA_HSP_SERVICE_MASK && p_scb->role == BTA_AG_INT) {
        uuid = UUID_SERVCLASS_HEADSET_HS;
        p_scb->peer_version = 0x0100;
    } else {
        return result;
    }


    while (TRUE)
    {

        if ((p_rec = SDP_FindServiceInDb(p_scb->p_disc_db, uuid, p_rec)) == ((void*)0)) {
            if (uuid == UUID_SERVCLASS_HEADSET_HS) {

                uuid = UUID_SERVCLASS_HEADSET;
                if ((p_rec = SDP_FindServiceInDb(p_scb->p_disc_db, uuid, p_rec)) == ((void*)0)) {
                    break;
                }
            } else {
                break;
            }
        }


        if (p_scb->role == BTA_AG_INT) {
            if (SDP_FindProtocolListElemInRec(p_rec, UUID_PROTOCOL_RFCOMM, &pe)) {
                p_scb->peer_scn = (UINT8) pe.params[0];
            } else {
                continue;
            }
        }

        SDP_FindProfileVersionInRec(p_rec, uuid, &p_scb->peer_version);

        if (service & BTA_HFP_SERVICE_MASK) {
            if ((p_attr = SDP_FindAttributeInRec(p_rec, ATTR_ID_SUPPORTED_FEATURES)) != ((void*)0)) {



                if (p_scb->peer_features == 0)
                    p_scb->peer_features = p_attr->attr_value.v.u16;
            }
        } else {

            if ((p_attr = SDP_FindAttributeInRec(p_rec, ATTR_ID_REMOTE_AUDIO_VOLUME_CONTROL)) != ((void*)0)) {

                if (p_attr->attr_value.v.u8) {
                    p_scb->peer_features |= BTA_AG_PEER_FEAT_VOL;
                } else {
                    p_scb->peer_features &= ~BTA_AG_PEER_FEAT_VOL;
                }
            }
        }

        result = TRUE;
        break;
    }
    return result;
}
