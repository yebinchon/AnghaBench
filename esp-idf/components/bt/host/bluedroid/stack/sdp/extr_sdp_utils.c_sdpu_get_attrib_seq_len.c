
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int tSDP_RECORD ;
struct TYPE_8__ {size_t num_attr; TYPE_1__* attr_entry; } ;
typedef TYPE_2__ tSDP_ATTR_SEQ ;
struct TYPE_9__ {size_t id; } ;
typedef TYPE_3__ tSDP_ATTRIBUTE ;
typedef size_t UINT16 ;
struct TYPE_7__ {size_t start; size_t end; } ;
typedef scalar_t__ BOOLEAN ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 TYPE_3__* sdp_db_find_attr_in_rec (int *,size_t,size_t) ;
 scalar_t__ sdpu_get_attrib_entry_len (TYPE_3__*) ;

UINT16 sdpu_get_attrib_seq_len(tSDP_RECORD *p_rec, tSDP_ATTR_SEQ *attr_seq)
{
    tSDP_ATTRIBUTE *p_attr;
    UINT16 len1 = 0;
    UINT16 xx;
    BOOLEAN is_range = FALSE;
    UINT16 start_id = 0, end_id = 0;

    for (xx = 0; xx < attr_seq->num_attr; xx++) {
        if (is_range == FALSE) {
            start_id = attr_seq->attr_entry[xx].start;
            end_id = attr_seq->attr_entry[xx].end;
        }
        p_attr = sdp_db_find_attr_in_rec (p_rec,
                                          start_id,
                                          end_id);
        if (p_attr) {
            len1 += sdpu_get_attrib_entry_len (p_attr);


            if (start_id != end_id) {

                start_id = p_attr->id + 1;
                xx--;
                is_range = TRUE;
            } else {
                is_range = FALSE;
            }
        } else {
            is_range = FALSE;
        }
    }
    return len1;
}
