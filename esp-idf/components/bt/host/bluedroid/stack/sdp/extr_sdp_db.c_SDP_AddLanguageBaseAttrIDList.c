
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef int UINT32 ;
typedef int UINT16 ;
typedef int BOOLEAN ;


 int ATTR_ID_LANGUAGE_BASE_ATTR_ID_LIST ;
 int DATA_ELE_SEQ_DESC_TYPE ;
 int FALSE ;
 int SDP_AddAttribute (int ,int ,int ,int ,int *) ;
 int SDP_MAX_ATTR_LEN ;
 int SDP_TRACE_ERROR (char*) ;
 int SIZE_TWO_BYTES ;
 int UINT16_TO_BE_STREAM (int *,int ) ;
 int UINT8_TO_BE_STREAM (int *,int) ;
 int UINT_DESC_TYPE ;
 int osi_free (int *) ;
 scalar_t__ osi_malloc (int) ;

BOOLEAN SDP_AddLanguageBaseAttrIDList (UINT32 handle, UINT16 lang,
                                       UINT16 char_enc, UINT16 base_id)
{

    UINT8 *p_buff;
    UINT8 *p;
    BOOLEAN result;

    if ((p_buff = (UINT8 *) osi_malloc(sizeof(UINT8) * SDP_MAX_ATTR_LEN)) == ((void*)0)) {
        SDP_TRACE_ERROR("SDP_AddLanguageBaseAttrIDList cannot get a buffer!\n");
        return (FALSE);
    }
    p = p_buff;



    UINT8_TO_BE_STREAM (p, (UINT_DESC_TYPE << 3) | SIZE_TWO_BYTES);
    UINT16_TO_BE_STREAM (p, lang);

    UINT8_TO_BE_STREAM (p, (UINT_DESC_TYPE << 3) | SIZE_TWO_BYTES);
    UINT16_TO_BE_STREAM (p, char_enc);

    UINT8_TO_BE_STREAM (p, (UINT_DESC_TYPE << 3) | SIZE_TWO_BYTES);
    UINT16_TO_BE_STREAM (p, base_id);

    result = SDP_AddAttribute (handle, ATTR_ID_LANGUAGE_BASE_ATTR_ID_LIST, DATA_ELE_SEQ_DESC_TYPE,
                               (UINT32) (p - p_buff), p_buff);
    osi_free(p_buff);
    return result;



}
