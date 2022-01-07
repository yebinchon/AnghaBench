
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef int UINT32 ;
typedef size_t UINT16 ;
typedef int BOOLEAN ;


 int ARRAY_TO_BE_STREAM (int*,int*,int) ;
 int DATA_ELE_SEQ_DESC_TYPE ;
 int FALSE ;
 int SDP_AddAttribute (int ,size_t,int ,int ,int*) ;
 int SDP_MAX_ATTR_LEN ;
 int SDP_TRACE_ERROR (char*,...) ;
 int SIZE_EIGHT_BYTES ;
 int SIZE_FOUR_BYTES ;
 int SIZE_IN_NEXT_BYTE ;
 int SIZE_ONE_BYTE ;
 int SIZE_SIXTEEN_BYTES ;
 int SIZE_TWO_BYTES ;
 int UINT8_TO_BE_STREAM (int*,int) ;
 int osi_free (int*) ;
 scalar_t__ osi_malloc (int) ;

BOOLEAN SDP_AddSequence (UINT32 handle, UINT16 attr_id, UINT16 num_elem,
                         UINT8 type[], UINT8 len[], UINT8 *p_val[])
{

    UINT16 xx;
    UINT8 *p_buff;
    UINT8 *p;
    UINT8 *p_head;
    BOOLEAN result;

    if ((p_buff = (UINT8 *) osi_malloc(sizeof(UINT8) * SDP_MAX_ATTR_LEN * 2)) == ((void*)0)) {
        SDP_TRACE_ERROR("SDP_AddSequence cannot get a buffer!\n");
        return (FALSE);
    }
    p = p_buff;


    for (xx = 0; xx < num_elem; xx++) {
        p_head = p;
        switch (len[xx]) {
        case 1:
            UINT8_TO_BE_STREAM (p, (type[xx] << 3) | SIZE_ONE_BYTE);
            break;
        case 2:
            UINT8_TO_BE_STREAM (p, (type[xx] << 3) | SIZE_TWO_BYTES);
            break;
        case 4:
            UINT8_TO_BE_STREAM (p, (type[xx] << 3) | SIZE_FOUR_BYTES);
            break;
        case 8:
            UINT8_TO_BE_STREAM (p, (type[xx] << 3) | SIZE_EIGHT_BYTES);
            break;
        case 16:
            UINT8_TO_BE_STREAM (p, (type[xx] << 3) | SIZE_SIXTEEN_BYTES);
            break;
        default:
            UINT8_TO_BE_STREAM (p, (type[xx] << 3) | SIZE_IN_NEXT_BYTE);
            UINT8_TO_BE_STREAM (p, len[xx]);
            break;
        }

        ARRAY_TO_BE_STREAM (p, p_val[xx], len[xx]);

        if (p - p_buff > SDP_MAX_ATTR_LEN) {

            p = p_head;
            if (p_head == p_buff) {

                SDP_TRACE_ERROR ("SDP_AddSequence - too long(attribute is not added)!!\n");
                osi_free(p_buff);
                return FALSE;
            } else {
                SDP_TRACE_ERROR ("SDP_AddSequence - too long, add %d elements of %d\n", xx, num_elem);
            }
            break;
        }
    }
    result = SDP_AddAttribute (handle, attr_id, DATA_ELE_SEQ_DESC_TYPE, (UINT32) (p - p_buff), p_buff);
    osi_free(p_buff);
    return result;



}
