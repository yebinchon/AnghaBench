
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int record_handle; scalar_t__ num_attributes; size_t free_pad_ptr; int * attr_pad; TYPE_3__* attribute; } ;
typedef TYPE_2__ tSDP_RECORD ;
struct TYPE_7__ {scalar_t__ id; scalar_t__ type; int len; int * value_ptr; } ;
typedef TYPE_3__ tSDP_ATTRIBUTE ;
typedef scalar_t__ UINT8 ;
typedef int UINT32 ;
typedef scalar_t__ UINT16 ;
struct TYPE_5__ {scalar_t__ num_records; TYPE_2__* record; } ;
struct TYPE_8__ {scalar_t__ trace_level; TYPE_1__ server_db; } ;
typedef int BOOLEAN ;


 scalar_t__ BOOLEAN_DESC_TYPE ;
 scalar_t__ BT_TRACE_LEVEL_DEBUG ;
 scalar_t__ DATA_ELE_ALT_DESC_TYPE ;
 scalar_t__ DATA_ELE_SEQ_DESC_TYPE ;
 int FALSE ;
 int SDP_DeleteAttribute (int,scalar_t__) ;
 int SDP_MAX_PAD_LEN ;
 scalar_t__ SDP_MAX_REC_ATTR ;
 int SDP_TRACE_DEBUG (char*,int,scalar_t__,scalar_t__,int,scalar_t__*,scalar_t__*) ;
 int SDP_TRACE_ERROR (char*,scalar_t__,int) ;
 int SDP_TRACE_WARNING (char*,int,int) ;
 scalar_t__ TEXT_STR_DESC_TYPE ;
 int TRUE ;
 scalar_t__ TWO_COMP_INT_DESC_TYPE ;
 scalar_t__ UINT_DESC_TYPE ;
 scalar_t__ UUID_DESC_TYPE ;
 int memcpy (int *,scalar_t__*,size_t) ;
 TYPE_4__ sdp_cb ;
 int sprintf (char*,char*,scalar_t__) ;

BOOLEAN SDP_AddAttribute (UINT32 handle, UINT16 attr_id, UINT8 attr_type,
                          UINT32 attr_len, UINT8 *p_val)
{

    UINT16 xx, yy, zz;
    tSDP_RECORD *p_rec = &sdp_cb.server_db.record[0];


    if (sdp_cb.trace_level >= BT_TRACE_LEVEL_DEBUG) {
        if ((attr_type == UINT_DESC_TYPE) ||
                (attr_type == TWO_COMP_INT_DESC_TYPE) ||
                (attr_type == UUID_DESC_TYPE) ||
                (attr_type == DATA_ELE_SEQ_DESC_TYPE) ||
                (attr_type == DATA_ELE_ALT_DESC_TYPE)) {
            UINT8 num_array[400];
            UINT32 i;
            UINT32 len = (attr_len > 200) ? 200 : attr_len;

            num_array[0] = '\0';
            for (i = 0; i < len; i++) {
                sprintf((char *)&num_array[i * 2], "%02X", (UINT8)(p_val[i]));
            }
            SDP_TRACE_DEBUG("SDP_AddAttribute: handle:%X, id:%04X, type:%d, len:%d, p_val:%p, *p_val:%s\n",
                            handle, attr_id, attr_type, attr_len, p_val, num_array);
        } else if (attr_type == BOOLEAN_DESC_TYPE) {
            SDP_TRACE_DEBUG("SDP_AddAttribute: handle:%X, id:%04X, type:%d, len:%d, p_val:%p, *p_val:%d\n",
                            handle, attr_id, attr_type, attr_len, p_val, *p_val);
        } else {
            SDP_TRACE_DEBUG("SDP_AddAttribute: handle:%X, id:%04X, type:%d, len:%d, p_val:%p, *p_val:%s\n",
                            handle, attr_id, attr_type, attr_len, p_val, p_val);
        }
    }



    for (zz = 0; zz < sdp_cb.server_db.num_records; zz++, p_rec++) {
        if (p_rec->record_handle == handle) {
            tSDP_ATTRIBUTE *p_attr = &p_rec->attribute[0];


            for (xx = 0; xx < p_rec->num_attributes; xx++, p_attr++) {

                if (p_attr->id == attr_id) {
                    SDP_DeleteAttribute (handle, attr_id);
                    break;
                }
                if (p_attr->id > attr_id) {
                    break;
                }
            }

            if (p_rec->num_attributes == SDP_MAX_REC_ATTR) {
                return (FALSE);
            }


            if (xx == p_rec->num_attributes) {
                p_attr = &p_rec->attribute[p_rec->num_attributes];
            } else {

                for (yy = p_rec->num_attributes; yy > xx; yy--) {
                    p_rec->attribute[yy] = p_rec->attribute[yy - 1];
                }
            }

            p_attr->id = attr_id;
            p_attr->type = attr_type;
            p_attr->len = attr_len;

            if (p_rec->free_pad_ptr + attr_len >= SDP_MAX_PAD_LEN) {

                if (attr_type == TEXT_STR_DESC_TYPE) {
                    SDP_TRACE_WARNING("SDP_AddAttribute: attr_len:%d too long. truncate to (%d)\n",
                                      attr_len, SDP_MAX_PAD_LEN - p_rec->free_pad_ptr );

                    attr_len = SDP_MAX_PAD_LEN - p_rec->free_pad_ptr;
                    p_val[SDP_MAX_PAD_LEN - p_rec->free_pad_ptr] = '\0';
                    p_val[SDP_MAX_PAD_LEN - p_rec->free_pad_ptr + 1] = '\0';
                } else {
                    attr_len = 0;
                }
            }

            if ((attr_len > 0) && (p_val != 0)) {
                p_attr->len = attr_len;
                memcpy (&p_rec->attr_pad[p_rec->free_pad_ptr], p_val, (size_t)attr_len);
                p_attr->value_ptr = &p_rec->attr_pad[p_rec->free_pad_ptr];
                p_rec->free_pad_ptr += attr_len;
            } else if ((attr_len == 0 && p_attr->len != 0) ||
                       p_val == 0) {
                SDP_TRACE_ERROR("SDP_AddAttribute fail, length exceed maximum: ID %d: attr_len:%d \n",
                                attr_id, attr_len );
                p_attr->id = p_attr->type = p_attr->len = 0;
                return (FALSE);
            }
            p_rec->num_attributes++;
            return (TRUE);
        }
    }

    return (FALSE);
}
