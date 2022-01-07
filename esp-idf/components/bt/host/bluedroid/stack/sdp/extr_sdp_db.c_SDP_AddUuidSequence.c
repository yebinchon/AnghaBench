
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef int UINT32 ;
typedef scalar_t__ UINT16 ;
typedef int INT32 ;
typedef int BOOLEAN ;


 int DATA_ELE_SEQ_DESC_TYPE ;
 int FALSE ;
 int SDP_AddAttribute (int ,scalar_t__,int ,int ,int *) ;
 int SDP_MAX_ATTR_LEN ;
 int SDP_TRACE_ERROR (char*) ;
 int SDP_TRACE_WARNING (char*,scalar_t__,scalar_t__) ;
 int SIZE_TWO_BYTES ;
 int UINT16_TO_BE_STREAM (int *,scalar_t__) ;
 int UINT8_TO_BE_STREAM (int *,int) ;
 int UUID_DESC_TYPE ;
 int osi_free (int *) ;
 scalar_t__ osi_malloc (int) ;

BOOLEAN SDP_AddUuidSequence (UINT32 handle, UINT16 attr_id, UINT16 num_uuids,
                             UINT16 *p_uuids)
{

    UINT16 xx;
    UINT8 *p_buff;
    UINT8 *p;
    INT32 max_len = SDP_MAX_ATTR_LEN - 3;
    BOOLEAN result;

    if ((p_buff = (UINT8 *) osi_malloc(sizeof(UINT8) * SDP_MAX_ATTR_LEN * 2)) == ((void*)0)) {
        SDP_TRACE_ERROR("SDP_AddUuidSequence cannot get a buffer!\n");
        return (FALSE);
    }
    p = p_buff;


    for (xx = 0; xx < num_uuids ; xx++, p_uuids++) {
        UINT8_TO_BE_STREAM (p, (UUID_DESC_TYPE << 3) | SIZE_TWO_BYTES);
        UINT16_TO_BE_STREAM (p, *p_uuids);

        if ((p - p_buff) > max_len) {
            SDP_TRACE_WARNING ("SDP_AddUuidSequence - too long, add %d uuids of %d\n", xx, num_uuids);
            break;
        }
    }

    result = SDP_AddAttribute (handle, attr_id, DATA_ELE_SEQ_DESC_TYPE, (UINT32) (p - p_buff), p_buff);
    osi_free(p_buff);
    return result;



}
