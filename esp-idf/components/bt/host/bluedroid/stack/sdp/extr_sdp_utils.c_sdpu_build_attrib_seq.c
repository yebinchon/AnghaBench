
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef int UINT16 ;


 int DATA_ELE_SEQ_DESC_TYPE ;
 int SIZE_FOUR_BYTES ;
 int SIZE_IN_NEXT_BYTE ;
 int SIZE_IN_NEXT_WORD ;
 int SIZE_TWO_BYTES ;
 int UINT16_TO_BE_STREAM (int *,int) ;
 int UINT8_TO_BE_STREAM (int *,int) ;
 int UINT_DESC_TYPE ;

UINT8 *sdpu_build_attrib_seq (UINT8 *p_out, UINT16 *p_attr, UINT16 num_attrs)
{
    UINT16 xx;



    if (!p_attr) {
        xx = 5;
    } else {
        xx = num_attrs * 3;
    }

    if (xx > 255) {
        UINT8_TO_BE_STREAM (p_out, (DATA_ELE_SEQ_DESC_TYPE << 3) | SIZE_IN_NEXT_WORD);
        UINT16_TO_BE_STREAM (p_out, xx);
    } else {
        UINT8_TO_BE_STREAM (p_out, (DATA_ELE_SEQ_DESC_TYPE << 3) | SIZE_IN_NEXT_BYTE);
        UINT8_TO_BE_STREAM (p_out, xx);
    }


    if (!p_attr) {
        UINT8_TO_BE_STREAM (p_out, (UINT_DESC_TYPE << 3) | SIZE_FOUR_BYTES);
        UINT16_TO_BE_STREAM (p_out, 0);
        UINT16_TO_BE_STREAM (p_out, 0xFFFF);
    } else {

        for (xx = 0; xx < num_attrs; xx++, p_attr++) {
            UINT8_TO_BE_STREAM (p_out, (UINT_DESC_TYPE << 3) | SIZE_TWO_BYTES);
            UINT16_TO_BE_STREAM (p_out, *p_attr);
        }
    }

    return (p_out);
}
