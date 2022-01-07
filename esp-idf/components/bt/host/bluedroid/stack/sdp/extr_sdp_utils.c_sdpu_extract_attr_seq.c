
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t num_attr; TYPE_1__* attr_entry; } ;
typedef TYPE_2__ tSDP_ATTR_SEQ ;
typedef int UINT8 ;
typedef scalar_t__ UINT32 ;
typedef scalar_t__ UINT16 ;
struct TYPE_4__ {scalar_t__ start; scalar_t__ end; } ;


 int BE_STREAM_TO_UINT16 (scalar_t__,int*) ;
 int BE_STREAM_TO_UINT32 (scalar_t__,int*) ;
 int BE_STREAM_TO_UINT8 (scalar_t__,int*) ;
 int DATA_ELE_SEQ_DESC_TYPE ;
 size_t MAX_ATTR_PER_SEQ ;





 int UINT_DESC_TYPE ;

UINT8 *sdpu_extract_attr_seq (UINT8 *p, UINT16 param_len, tSDP_ATTR_SEQ *p_seq)
{
    UINT8 *p_end_list;
    UINT8 descr, type, size;
    UINT32 list_len, attr_len;


    p_seq->num_attr = 0;


    BE_STREAM_TO_UINT8 (descr, p);
    type = descr >> 3;
    size = descr & 7;

    if (type != DATA_ELE_SEQ_DESC_TYPE) {
        return (p);
    }

    switch (size) {
    case 131:
        BE_STREAM_TO_UINT8 (list_len, p);
        break;

    case 129:
        BE_STREAM_TO_UINT16 (list_len, p);
        break;

    case 130:
        BE_STREAM_TO_UINT32 (list_len, p);
        break;

    default:
        return (p);
    }

    if (list_len > param_len) {
        return (p);
    }

    p_end_list = p + list_len;


    for ( ; p < p_end_list ; ) {
        BE_STREAM_TO_UINT8 (descr, p);
        type = descr >> 3;
        size = descr & 7;

        if (type != UINT_DESC_TYPE) {
            return (p);
        }

        switch (size) {
        case 128:
            attr_len = 2;
            break;
        case 132:
            attr_len = 4;
            break;
        case 131:
            BE_STREAM_TO_UINT8 (attr_len, p);
            break;
        case 129:
            BE_STREAM_TO_UINT16 (attr_len, p);
            break;
        case 130:
            BE_STREAM_TO_UINT32 (attr_len, p);
            break;
        default:
            return (((void*)0));
            break;
        }


        if (attr_len == 2) {
            BE_STREAM_TO_UINT16 (p_seq->attr_entry[p_seq->num_attr].start, p);
            p_seq->attr_entry[p_seq->num_attr].end = p_seq->attr_entry[p_seq->num_attr].start;
        } else if (attr_len == 4) {
            BE_STREAM_TO_UINT16 (p_seq->attr_entry[p_seq->num_attr].start, p);
            BE_STREAM_TO_UINT16 (p_seq->attr_entry[p_seq->num_attr].end, p);
        } else {
            return (((void*)0));
        }


        if (++p_seq->num_attr >= MAX_ATTR_PER_SEQ) {
            return (((void*)0));
        }
    }

    return (p);
}
