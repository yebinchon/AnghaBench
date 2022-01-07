
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int uuid16; } ;
struct TYPE_5__ {int len; TYPE_1__ uu; } ;
typedef TYPE_2__ tSDP_UUID ;
typedef int tSDP_DISC_CMPL_CB ;
typedef int tSDP_DISCOVERY_DB ;
typedef int UINT32 ;
typedef int UINT16 ;
typedef int BD_ADDR ;


 int SDP_DI_DISC_FAILED ;
 scalar_t__ SDP_InitDiscoveryDb (int *,int ,int,TYPE_2__*,int ,int *) ;
 int SDP_SUCCESS ;
 scalar_t__ SDP_ServiceSearchRequest (int ,int *,int *) ;
 int UUID_SERVCLASS_PNP_INFORMATION ;

UINT16 SDP_DiDiscover( BD_ADDR remote_device, tSDP_DISCOVERY_DB *p_db,
                       UINT32 len, tSDP_DISC_CMPL_CB *p_cb )
{

    UINT16 result = SDP_DI_DISC_FAILED;
    UINT16 num_uuids = 1;
    UINT16 di_uuid = UUID_SERVCLASS_PNP_INFORMATION;


    tSDP_UUID init_uuid;
    init_uuid.len = 2;
    init_uuid.uu.uuid16 = di_uuid;

    if ( SDP_InitDiscoveryDb(p_db, len, num_uuids, &init_uuid, 0, ((void*)0)) ) {
        if ( SDP_ServiceSearchRequest(remote_device, p_db, p_cb) ) {
            result = SDP_SUCCESS;
        }
    }
    return result;



}
