
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int list_elem; int num_elems; } ;
typedef TYPE_1__ tSDP_PROTO_LIST_ELEM ;
typedef scalar_t__ UINT8 ;
typedef int UINT32 ;
typedef scalar_t__ UINT16 ;
typedef int BOOLEAN ;


 int ATTR_ID_ADDITION_PROTO_DESC_LISTS ;
 int DATA_ELE_SEQ_DESC_TYPE ;
 int FALSE ;
 int SDP_AddAttribute (int ,int ,int,int ,scalar_t__*) ;
 int SDP_MAX_ATTR_LEN ;
 int SDP_TRACE_ERROR (char*) ;
 int SIZE_IN_NEXT_BYTE ;
 int UINT8_TO_BE_STREAM (scalar_t__*,int) ;
 int osi_free (scalar_t__*) ;
 scalar_t__ osi_malloc (int) ;
 int sdp_compose_proto_list (scalar_t__*,int ,int ) ;

BOOLEAN SDP_AddAdditionProtoLists (UINT32 handle, UINT16 num_elem,
                                   tSDP_PROTO_LIST_ELEM *p_proto_list)
{

    UINT16 xx;
    UINT8 *p_buff;
    UINT8 *p;
    UINT8 *p_len;
    int offset;
    BOOLEAN result;

    if ((p_buff = (UINT8 *) osi_malloc(sizeof(UINT8) * SDP_MAX_ATTR_LEN * 2)) == ((void*)0)) {
        SDP_TRACE_ERROR("SDP_AddAdditionProtoLists cannot get a buffer!\n");
        return (FALSE);
    }
    p = p_buff;


    for (xx = 0; xx < num_elem; xx++, p_proto_list++) {
        UINT8_TO_BE_STREAM (p, (DATA_ELE_SEQ_DESC_TYPE << 3) | SIZE_IN_NEXT_BYTE);
        p_len = p++;

        offset = sdp_compose_proto_list(p, p_proto_list->num_elems,
                                        p_proto_list->list_elem);
        p += offset;

        *p_len = (UINT8)(p - p_len - 1);
    }
    result = SDP_AddAttribute (handle, ATTR_ID_ADDITION_PROTO_DESC_LISTS, DATA_ELE_SEQ_DESC_TYPE,
                               (UINT32) (p - p_buff), p_buff);
    osi_free(p_buff);
    return result;




}
