
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ num_uids; TYPE_2__* uuid_entry; } ;
typedef TYPE_3__ tSDP_UUID_SEQ ;
struct TYPE_13__ {scalar_t__ num_attributes; TYPE_5__* attribute; } ;
typedef TYPE_4__ tSDP_RECORD ;
struct TYPE_14__ {scalar_t__ type; int len; int value_ptr; } ;
typedef TYPE_5__ tSDP_ATTRIBUTE ;
typedef scalar_t__ UINT16 ;
struct TYPE_10__ {size_t num_records; TYPE_4__* record; } ;
struct TYPE_15__ {TYPE_1__ server_db; } ;
struct TYPE_11__ {int len; int * value; } ;


 scalar_t__ DATA_ELE_SEQ_DESC_TYPE ;
 scalar_t__ UUID_DESC_TYPE ;
 scalar_t__ find_uuid_in_seq (int ,int ,int *,int ,int ) ;
 TYPE_9__ sdp_cb ;
 scalar_t__ sdpu_compare_uuid_arrays (int ,int ,int *,int ) ;

tSDP_RECORD *sdp_db_service_search (tSDP_RECORD *p_rec, tSDP_UUID_SEQ *p_seq)
{
    UINT16 xx, yy;
    tSDP_ATTRIBUTE *p_attr;
    tSDP_RECORD *p_end = &sdp_cb.server_db.record[sdp_cb.server_db.num_records];


    if (!p_rec) {
        p_rec = &sdp_cb.server_db.record[0];
    } else {
        p_rec++;
    }



    for ( ; p_rec < p_end; p_rec++) {
        for (yy = 0; yy < p_seq->num_uids; yy++) {
            p_attr = &p_rec->attribute[0];
            for (xx = 0; xx < p_rec->num_attributes; xx++, p_attr++) {
                if (p_attr->type == UUID_DESC_TYPE) {
                    if (sdpu_compare_uuid_arrays (p_attr->value_ptr, p_attr->len,
                                                  &p_seq->uuid_entry[yy].value[0],
                                                  p_seq->uuid_entry[yy].len)) {
                        break;
                    }
                } else if (p_attr->type == DATA_ELE_SEQ_DESC_TYPE) {
                    if (find_uuid_in_seq (p_attr->value_ptr, p_attr->len,
                                          &p_seq->uuid_entry[yy].value[0],
                                          p_seq->uuid_entry[yy].len, 0)) {
                        break;
                    }
                }
            }

            if (xx == p_rec->num_attributes) {
                break;
            }
        }


        if (yy == p_seq->num_uids) {
            return (p_rec);
        }
    }


    return (((void*)0));
}
