
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id; int type; int len; int * value_ptr; } ;
typedef TYPE_1__ tSDP_ATTRIBUTE ;
typedef int UINT8 ;


 int ARRAY_TO_BE_STREAM (int *,int *,int) ;


 int SIZE_EIGHT_BYTES ;
 int SIZE_FOUR_BYTES ;
 int SIZE_IN_NEXT_BYTE ;
 int SIZE_IN_NEXT_LONG ;
 int SIZE_IN_NEXT_WORD ;
 int SIZE_ONE_BYTE ;
 int SIZE_SIXTEEN_BYTES ;
 int SIZE_TWO_BYTES ;

 int UINT16_TO_BE_STREAM (int *,int) ;
 int UINT32_TO_BE_STREAM (int *,int) ;
 int UINT8_TO_BE_STREAM (int *,int) ;
 int UINT_DESC_TYPE ;


UINT8 *sdpu_build_attrib_entry (UINT8 *p_out, tSDP_ATTRIBUTE *p_attr)
{

    UINT8_TO_BE_STREAM (p_out, (UINT_DESC_TYPE << 3) | SIZE_TWO_BYTES);
    UINT16_TO_BE_STREAM (p_out, p_attr->id);



    switch (p_attr->type) {
    case 129:
    case 130:
    case 131:
    case 128:







        {







            {
                UINT8_TO_BE_STREAM (p_out, (p_attr->type << 3) | SIZE_IN_NEXT_BYTE);
                UINT8_TO_BE_STREAM (p_out, p_attr->len);
            }
        }
        if (p_attr->value_ptr != ((void*)0)) {
            ARRAY_TO_BE_STREAM (p_out, p_attr->value_ptr, (int)p_attr->len);
        }

        return (p_out);
    }


    switch (p_attr->len) {
    case 1:
        UINT8_TO_BE_STREAM (p_out, (p_attr->type << 3) | SIZE_ONE_BYTE);
        break;
    case 2:
        UINT8_TO_BE_STREAM (p_out, (p_attr->type << 3) | SIZE_TWO_BYTES);
        break;
    case 4:
        UINT8_TO_BE_STREAM (p_out, (p_attr->type << 3) | SIZE_FOUR_BYTES);
        break;
    case 8:
        UINT8_TO_BE_STREAM (p_out, (p_attr->type << 3) | SIZE_EIGHT_BYTES);
        break;
    case 16:
        UINT8_TO_BE_STREAM (p_out, (p_attr->type << 3) | SIZE_SIXTEEN_BYTES);
        break;
    default:
        UINT8_TO_BE_STREAM (p_out, (p_attr->type << 3) | SIZE_IN_NEXT_BYTE);
        UINT8_TO_BE_STREAM (p_out, p_attr->len);
        break;
    }

    if (p_attr->value_ptr != ((void*)0)) {
        ARRAY_TO_BE_STREAM (p_out, p_attr->value_ptr, (int)p_attr->len);
    }

    return (p_out);
}
