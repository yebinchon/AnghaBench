
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t num_uids; TYPE_1__* uuid_entry; } ;
typedef TYPE_2__ tSDP_UUID_SEQ ;
typedef int UINT8 ;
typedef scalar_t__ UINT32 ;
typedef scalar_t__ UINT16 ;
struct TYPE_4__ {int value; scalar_t__ len; } ;


 int BE_STREAM_TO_ARRAY (int*,int ,int) ;
 int BE_STREAM_TO_UINT16 (scalar_t__,int*) ;
 int BE_STREAM_TO_UINT32 (scalar_t__,int*) ;
 int BE_STREAM_TO_UINT8 (scalar_t__,int*) ;
 int DATA_ELE_SEQ_DESC_TYPE ;
 size_t MAX_UUIDS_PER_SEQ ;






 int UUID_DESC_TYPE ;

UINT8 *sdpu_extract_uid_seq (UINT8 *p, UINT16 param_len, tSDP_UUID_SEQ *p_seq)
{
    UINT8 *p_seq_end;
    UINT8 descr, type, size;
    UINT32 seq_len, uuid_len;


    p_seq->num_uids = 0;



    BE_STREAM_TO_UINT8 (descr, p);
    type = descr >> 3;
    size = descr & 7;

    if (type != DATA_ELE_SEQ_DESC_TYPE) {
        return (((void*)0));
    }

    switch (size) {
    case 128:
        seq_len = 2;
        break;
    case 133:
        seq_len = 4;
        break;
    case 129:
        seq_len = 16;
        break;
    case 132:
        BE_STREAM_TO_UINT8 (seq_len, p);
        break;
    case 130:
        BE_STREAM_TO_UINT16 (seq_len, p);
        break;
    case 131:
        BE_STREAM_TO_UINT32 (seq_len, p);
        break;
    default:
        return (((void*)0));
    }

    if (seq_len >= param_len) {
        return (((void*)0));
    }

    p_seq_end = p + seq_len;


    for ( ; p < p_seq_end ; ) {
        BE_STREAM_TO_UINT8 (descr, p);
        type = descr >> 3;
        size = descr & 7;

        if (type != UUID_DESC_TYPE) {
            return (((void*)0));
        }

        switch (size) {
        case 128:
            uuid_len = 2;
            break;
        case 133:
            uuid_len = 4;
            break;
        case 129:
            uuid_len = 16;
            break;
        case 132:
            BE_STREAM_TO_UINT8 (uuid_len, p);
            break;
        case 130:
            BE_STREAM_TO_UINT16 (uuid_len, p);
            break;
        case 131:
            BE_STREAM_TO_UINT32 (uuid_len, p);
            break;
        default:
            return (((void*)0));
        }


        if ((uuid_len == 2) || (uuid_len == 4) || (uuid_len == 16)) {
            p_seq->uuid_entry[p_seq->num_uids].len = (UINT16) uuid_len;
            BE_STREAM_TO_ARRAY (p, p_seq->uuid_entry[p_seq->num_uids].value, (int)uuid_len);
            p_seq->num_uids++;
        } else {
            return (((void*)0));
        }


        if (p_seq->num_uids >= MAX_UUIDS_PER_SEQ) {
            return (((void*)0));
        }
    }

    if (p != p_seq_end) {
        return (((void*)0));
    }

    return (p);
}
