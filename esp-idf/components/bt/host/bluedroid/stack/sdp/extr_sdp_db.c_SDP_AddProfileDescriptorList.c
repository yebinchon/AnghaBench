
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT8 ;
typedef int UINT32 ;
typedef int UINT16 ;
typedef int BOOLEAN ;


 int ATTR_ID_BT_PROFILE_DESC_LIST ;
 int DATA_ELE_SEQ_DESC_TYPE ;
 int FALSE ;
 int SDP_AddAttribute (int ,int ,int,int ,scalar_t__*) ;
 int SDP_MAX_ATTR_LEN ;
 int SDP_TRACE_ERROR (char*) ;
 int SIZE_IN_NEXT_BYTE ;
 int SIZE_TWO_BYTES ;
 int UINT16_TO_BE_STREAM (scalar_t__*,int ) ;
 int UINT8_TO_BE_STREAM (scalar_t__*,int) ;
 int UINT_DESC_TYPE ;
 int UUID_DESC_TYPE ;
 int osi_free (scalar_t__*) ;
 scalar_t__ osi_malloc (int) ;

BOOLEAN SDP_AddProfileDescriptorList (UINT32 handle, UINT16 profile_uuid,
                                      UINT16 version)
{

    UINT8 *p_buff;
    UINT8 *p;
    BOOLEAN result;

    if ((p_buff = (UINT8 *) osi_malloc(sizeof(UINT8) * SDP_MAX_ATTR_LEN)) == ((void*)0)) {
        SDP_TRACE_ERROR("SDP_AddProfileDescriptorList cannot get a buffer!\n");
        return (FALSE);
    }
    p = p_buff + 2;



    UINT8_TO_BE_STREAM (p, (UUID_DESC_TYPE << 3) | SIZE_TWO_BYTES);
    UINT16_TO_BE_STREAM (p, profile_uuid);

    UINT8_TO_BE_STREAM (p, (UINT_DESC_TYPE << 3) | SIZE_TWO_BYTES);
    UINT16_TO_BE_STREAM (p, version);


    *p_buff = (UINT8) ((DATA_ELE_SEQ_DESC_TYPE << 3) | SIZE_IN_NEXT_BYTE);
    *(p_buff + 1) = (UINT8) (p - (p_buff + 2));

    result = SDP_AddAttribute (handle, ATTR_ID_BT_PROFILE_DESC_LIST, DATA_ELE_SEQ_DESC_TYPE, (UINT32) (p - p_buff), p_buff);
    osi_free(p_buff);
    return result;




}
