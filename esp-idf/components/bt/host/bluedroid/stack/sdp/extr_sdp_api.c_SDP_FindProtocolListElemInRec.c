
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tSDP_PROTOCOL_ELEM ;
struct TYPE_5__ {TYPE_2__* p_first_attr; } ;
typedef TYPE_1__ tSDP_DISC_REC ;
struct TYPE_6__ {scalar_t__ attr_id; struct TYPE_6__* p_next_attr; int attr_len_type; } ;
typedef TYPE_2__ tSDP_DISC_ATTR ;
typedef int UINT16 ;
typedef int BOOLEAN ;


 scalar_t__ ATTR_ID_PROTOCOL_DESC_LIST ;
 scalar_t__ DATA_ELE_SEQ_DESC_TYPE ;
 int FALSE ;
 scalar_t__ SDP_DISC_ATTR_TYPE (int ) ;
 int sdp_fill_proto_elem (TYPE_2__*,int ,int *) ;

BOOLEAN SDP_FindProtocolListElemInRec (tSDP_DISC_REC *p_rec, UINT16 layer_uuid, tSDP_PROTOCOL_ELEM *p_elem)
{

    tSDP_DISC_ATTR *p_attr;

    p_attr = p_rec->p_first_attr;
    while (p_attr) {

        if ((p_attr->attr_id == ATTR_ID_PROTOCOL_DESC_LIST)
                && (SDP_DISC_ATTR_TYPE(p_attr->attr_len_type) == DATA_ELE_SEQ_DESC_TYPE)) {
            return sdp_fill_proto_elem(p_attr, layer_uuid, p_elem);
        }
        p_attr = p_attr->p_next_attr;
    }


    return (FALSE);
}
