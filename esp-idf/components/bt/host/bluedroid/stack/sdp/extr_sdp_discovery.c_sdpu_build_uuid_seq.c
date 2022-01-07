
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int uuid128; int uuid32; int uuid16; } ;
struct TYPE_5__ {int len; TYPE_1__ uu; } ;
typedef TYPE_2__ tSDP_UUID ;
typedef int UINT8 ;
typedef int UINT16 ;


 int ARRAY_TO_BE_STREAM (int *,int ,int) ;
 int DATA_ELE_SEQ_DESC_TYPE ;
 int SIZE_FOUR_BYTES ;
 int SIZE_IN_NEXT_BYTE ;
 int SIZE_SIXTEEN_BYTES ;
 int SIZE_TWO_BYTES ;
 int UINT16_TO_BE_STREAM (int *,int ) ;
 int UINT32_TO_BE_STREAM (int *,int ) ;
 int UINT8_TO_BE_STREAM (int *,int) ;
 int UUID_DESC_TYPE ;

__attribute__((used)) static UINT8 *sdpu_build_uuid_seq (UINT8 *p_out, UINT16 num_uuids, tSDP_UUID *p_uuid_list)
{
    UINT16 xx;
    UINT8 *p_len;


    UINT8_TO_BE_STREAM (p_out, (DATA_ELE_SEQ_DESC_TYPE << 3) | SIZE_IN_NEXT_BYTE);


    p_len = p_out;
    p_out += 1;


    for (xx = 0; xx < num_uuids; xx++, p_uuid_list++) {
        if (p_uuid_list->len == 2) {
            UINT8_TO_BE_STREAM (p_out, (UUID_DESC_TYPE << 3) | SIZE_TWO_BYTES);
            UINT16_TO_BE_STREAM (p_out, p_uuid_list->uu.uuid16);
        } else if (p_uuid_list->len == 4) {
            UINT8_TO_BE_STREAM (p_out, (UUID_DESC_TYPE << 3) | SIZE_FOUR_BYTES);
            UINT32_TO_BE_STREAM (p_out, p_uuid_list->uu.uuid32);
        } else {
            UINT8_TO_BE_STREAM (p_out, (UUID_DESC_TYPE << 3) | SIZE_SIXTEEN_BYTES);
            ARRAY_TO_BE_STREAM (p_out, p_uuid_list->uu.uuid128, p_uuid_list->len);
        }
    }


    xx = (UINT16)(p_out - p_len - 1);
    UINT8_TO_BE_STREAM (p_len, xx);

    return (p_out);
}
