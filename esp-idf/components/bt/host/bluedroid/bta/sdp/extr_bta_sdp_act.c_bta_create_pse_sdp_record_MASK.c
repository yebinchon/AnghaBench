#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/ * params; } ;
typedef  TYPE_5__ tSDP_PROTOCOL_ELEM ;
typedef  int /*<<< orphan*/  tSDP_DISC_REC ;
struct TYPE_13__ {int u32; int u16; scalar_t__ array; int /*<<< orphan*/  u8; } ;
struct TYPE_14__ {TYPE_3__ v; } ;
struct TYPE_16__ {TYPE_4__ attr_value; int /*<<< orphan*/  attr_len_type; } ;
typedef  TYPE_6__ tSDP_DISC_ATTR ;
struct TYPE_11__ {char* service_name; int l2cap_psm; int /*<<< orphan*/  rfcomm_channel_number; int /*<<< orphan*/  profile_version; int /*<<< orphan*/  service_name_length; int /*<<< orphan*/  type; } ;
struct TYPE_12__ {int supported_features; TYPE_1__ hdr; int /*<<< orphan*/  supported_repositories; } ;
struct TYPE_17__ {TYPE_2__ pse; } ;
typedef  TYPE_7__ bluetooth_sdp_record ;
typedef  int /*<<< orphan*/  UINT16 ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_ID_GOEP_L2CAP_PSM ; 
 int /*<<< orphan*/  ATTR_ID_PBAP_SUPPORTED_FEATURES ; 
 int /*<<< orphan*/  ATTR_ID_SERVICE_NAME ; 
 int /*<<< orphan*/  ATTR_ID_SUPPORTED_REPOSITORIES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  SDP_TYPE_PBAP_PSE ; 
 int /*<<< orphan*/  UUID_PROTOCOL_RFCOMM ; 
 int /*<<< orphan*/  UUID_SERVCLASS_PHONE_ACCESS ; 

__attribute__((used)) static void FUNC4(bluetooth_sdp_record *record, tSDP_DISC_REC *p_rec)
{
    tSDP_DISC_ATTR *p_attr;
    UINT16 pversion;
    tSDP_PROTOCOL_ELEM pe;

    record->pse.hdr.type = SDP_TYPE_PBAP_PSE;
    record->pse.hdr.service_name_length = 0;
    record->pse.hdr.service_name = NULL;
    record->pse.hdr.rfcomm_channel_number = 0;
    record->pse.hdr.l2cap_psm = -1;
    record->pse.hdr.profile_version = 0;
    record->pse.supported_features = 0x00000003;
    record->pse.supported_repositories = 0;

    if ((p_attr = FUNC1(p_rec, ATTR_ID_SUPPORTED_REPOSITORIES)) != NULL) {
        record->pse.supported_repositories = p_attr->attr_value.v.u8;
    }
    if ((p_attr = FUNC1(p_rec, ATTR_ID_PBAP_SUPPORTED_FEATURES)) != NULL) {
        record->pse.supported_features = p_attr->attr_value.v.u32;
    }

    if ((p_attr = FUNC1(p_rec, ATTR_ID_SERVICE_NAME)) != NULL) {
        record->pse.hdr.service_name_length = FUNC0(p_attr->attr_len_type);
        record->pse.hdr.service_name = (char *)p_attr->attr_value.v.array;
    }

    if (FUNC2(p_rec, UUID_SERVCLASS_PHONE_ACCESS, &pversion)) {
        record->pse.hdr.profile_version = pversion;
    }

    if (FUNC3(p_rec, UUID_PROTOCOL_RFCOMM, &pe)) {
        record->pse.hdr.rfcomm_channel_number = pe.params[0];
    }

    if ((p_attr = FUNC1(p_rec, ATTR_ID_GOEP_L2CAP_PSM)) != NULL) {
        record->pse.hdr.l2cap_psm = p_attr->attr_value.v.u16;
    }
}