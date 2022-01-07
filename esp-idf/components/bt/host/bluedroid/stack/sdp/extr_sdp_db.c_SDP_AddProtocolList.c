
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tSDP_PROTOCOL_ELEM ;
typedef int UINT8 ;
typedef int UINT32 ;
typedef int UINT16 ;
typedef int BOOLEAN ;


 int ATTR_ID_PROTOCOL_DESC_LIST ;
 int DATA_ELE_SEQ_DESC_TYPE ;
 int FALSE ;
 int SDP_AddAttribute (int ,int ,int ,int ,int *) ;
 int SDP_MAX_ATTR_LEN ;
 int SDP_TRACE_ERROR (char*) ;
 int osi_free (int *) ;
 scalar_t__ osi_malloc (int) ;
 int sdp_compose_proto_list (int *,int ,int *) ;

BOOLEAN SDP_AddProtocolList (UINT32 handle, UINT16 num_elem,
                             tSDP_PROTOCOL_ELEM *p_elem_list)
{

    UINT8 *p_buff;
    int offset;
    BOOLEAN result;

    if ((p_buff = (UINT8 *) osi_malloc(sizeof(UINT8) * SDP_MAX_ATTR_LEN * 2)) == ((void*)0)) {
        SDP_TRACE_ERROR("SDP_AddProtocolList cannot get a buffer!\n");
        return (FALSE);
    }

    offset = sdp_compose_proto_list(p_buff, num_elem, p_elem_list);
    result = SDP_AddAttribute (handle, ATTR_ID_PROTOCOL_DESC_LIST, DATA_ELE_SEQ_DESC_TYPE, (UINT32) offset, p_buff);
    osi_free(p_buff);
    return result;



}
