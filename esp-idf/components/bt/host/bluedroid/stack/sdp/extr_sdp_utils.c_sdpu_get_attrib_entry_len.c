
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; int len; } ;
typedef TYPE_1__ tSDP_ATTRIBUTE ;
typedef int UINT16 ;







UINT16 sdpu_get_attrib_entry_len(tSDP_ATTRIBUTE *p_attr)
{
    UINT16 len = 3;



    switch (p_attr->type) {
    case 129:
    case 130:
    case 131:
    case 128:






        {






            {
                len += 2;
            }
        }
        len += p_attr->len;
        return len;
    }


    switch (p_attr->len) {
    case 1:
    case 2:
    case 4:
    case 8:
    case 16:
        len += 1;
        break;
    default:
        len += 2;
        break;
    }

    len += p_attr->len;
    return len;
}
