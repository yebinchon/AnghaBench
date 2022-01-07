
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int tBTM_SCO_DATA_FLAG ;
typedef scalar_t__ UINT8 ;
typedef int UINT16 ;
struct TYPE_7__ {int (* p_data_cb ) (int ,TYPE_2__*,int ) ;} ;
struct TYPE_9__ {TYPE_1__ sco_cb; } ;
struct TYPE_8__ {int offset; int len; } ;
typedef TYPE_2__ BT_HDR ;


 int BTM_MAX_SCO_LINKS ;
 int BTM_TRACE_DEBUG (char*,int ,int ,scalar_t__) ;
 scalar_t__ HCID_GET_EVENT (int ) ;
 int HCID_GET_HANDLE (int ) ;
 int STREAM_TO_UINT16 (int ,scalar_t__*) ;
 int STREAM_TO_UINT8 (scalar_t__,scalar_t__*) ;
 int UNUSED (scalar_t__) ;
 TYPE_6__ btm_cb ;
 int btm_find_scb_by_handle (int ) ;
 int osi_free (TYPE_2__*) ;
 int stub1 (int ,TYPE_2__*,int ) ;

void btm_route_sco_data(BT_HDR *p_msg)
{

    UINT16 sco_inx, handle;
    UINT8 *p = (UINT8 *)(p_msg + 1) + p_msg->offset;
    UINT8 pkt_size = 0;
    UINT8 pkt_status = 0;


    STREAM_TO_UINT16 (handle, p);
    pkt_status = HCID_GET_EVENT(handle);
    handle = HCID_GET_HANDLE (handle);

    STREAM_TO_UINT8 (pkt_size, p);
    UNUSED(pkt_size);
    if ((sco_inx = btm_find_scb_by_handle(handle)) != BTM_MAX_SCO_LINKS ) {

        if (!btm_cb.sco_cb.p_data_cb )

        {
            osi_free (p_msg);
        } else {
            (*btm_cb.sco_cb.p_data_cb)(sco_inx, p_msg, (tBTM_SCO_DATA_FLAG) pkt_status);
        }
    } else {
        osi_free (p_msg);
    }
    BTM_TRACE_DEBUG ("SCO: hdl %x, len %d, pkt_sz %d\n", handle, p_msg->len, pkt_size);



}
