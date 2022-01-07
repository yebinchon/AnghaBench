
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {TYPE_4__* p_first_attr; } ;
typedef TYPE_3__ tSDP_DISC_REC ;
struct TYPE_9__ {int u16; int u32; TYPE_4__* p_sub_attr; int u8; int array; } ;
struct TYPE_10__ {TYPE_1__ v; } ;
struct TYPE_12__ {int attr_id; int attr_len_type; struct TYPE_12__* p_next_attr; TYPE_2__ attr_value; } ;
typedef TYPE_4__ tSDP_DISC_ATTR ;
struct TYPE_13__ {int mem_free; scalar_t__ p_free_mem; } ;
typedef TYPE_5__ tSDP_DISCOVERY_DB ;
typedef int UINT8 ;
typedef int UINT32 ;
typedef int UINT16 ;
typedef int INT32 ;


 int ATTR_ID_ADDITION_PROTO_DESC_LISTS ;
 int ATTR_ID_PROTOCOL_DESC_LIST ;
 int BE_STREAM_TO_ARRAY (int*,int ,int ) ;
 int BE_STREAM_TO_UINT16 (int,int*) ;
 int BE_STREAM_TO_UINT32 (int,int*) ;



 int MAX_NEST_LEVELS ;
 int MAX_UUID_SIZE ;
 int SDP_ADDITIONAL_LIST_MASK ;
 int SDP_DISC_ATTR_LEN_MASK ;
 int SDP_TRACE_ERROR (char*) ;
 int SDP_TRACE_WARNING (char*,int) ;





 int* sdpu_get_len_from_type (int*,int,int*) ;
 int sdpu_is_base_uuid (int*) ;

__attribute__((used)) static UINT8 *add_attr (UINT8 *p, tSDP_DISCOVERY_DB *p_db, tSDP_DISC_REC *p_rec,
                        UINT16 attr_id, tSDP_DISC_ATTR *p_parent_attr, UINT8 nest_level)
{
    tSDP_DISC_ATTR *p_attr;
    UINT32 attr_len;
    UINT32 total_len;
    UINT16 attr_type;
    UINT16 id;
    UINT8 type;
    UINT8 *p_end;
    UINT8 is_additional_list = nest_level & SDP_ADDITIONAL_LIST_MASK;

    nest_level &= ~(SDP_ADDITIONAL_LIST_MASK);

    type = *p++;
    p = sdpu_get_len_from_type (p, type, &attr_len);

    attr_len &= SDP_DISC_ATTR_LEN_MASK;
    attr_type = (type >> 3) & 0x0f;


    if (attr_len > 4) {
        total_len = attr_len - 4 + (UINT16)sizeof (tSDP_DISC_ATTR);
    } else {
        total_len = sizeof (tSDP_DISC_ATTR);
    }


    total_len = (total_len + 3) & ~3;


    if (p_db->mem_free < total_len) {
        return (((void*)0));
    }

    p_attr = (tSDP_DISC_ATTR *) p_db->p_free_mem;
    p_attr->attr_id = attr_id;
    p_attr->attr_len_type = (UINT16)attr_len | (attr_type << 12);
    p_attr->p_next_attr = ((void*)0);


    switch (attr_type) {
    case 130:
        if ( (is_additional_list != 0) && (attr_len == 2) ) {
            BE_STREAM_TO_UINT16 (id, p);
            if (id != ATTR_ID_PROTOCOL_DESC_LIST) {
                p -= 2;
            } else {

                p_db->p_free_mem += sizeof (tSDP_DISC_ATTR);
                p_db->mem_free -= sizeof (tSDP_DISC_ATTR);
                p_end = p + attr_len;
                total_len = 0;


                if (nest_level >= MAX_NEST_LEVELS) {
                    SDP_TRACE_ERROR ("SDP - attr nesting too deep\n");
                    return (p_end);
                }


                p = add_attr (p, p_db, p_rec, ATTR_ID_PROTOCOL_DESC_LIST, p_attr, (UINT8)(nest_level + 1));

                break;
            }
        }


    case 131:
        switch (attr_len) {
        case 1:
            p_attr->attr_value.v.u8 = *p++;
            break;
        case 2:
            BE_STREAM_TO_UINT16 (p_attr->attr_value.v.u16, p);
            break;
        case 4:
            BE_STREAM_TO_UINT32 (p_attr->attr_value.v.u32, p);
            break;
        default:
            BE_STREAM_TO_ARRAY (p, p_attr->attr_value.v.array, (INT32)attr_len);
            break;
        }
        break;

    case 128:
        switch (attr_len) {
        case 2:
            BE_STREAM_TO_UINT16 (p_attr->attr_value.v.u16, p);
            break;
        case 4:
            BE_STREAM_TO_UINT32 (p_attr->attr_value.v.u32, p);
            if (p_attr->attr_value.v.u32 < 0x10000) {
                attr_len = 2;
                p_attr->attr_len_type = (UINT16)attr_len | (attr_type << 12);
                p_attr->attr_value.v.u16 = (UINT16) p_attr->attr_value.v.u32;

            }
            break;
        case 16:

            if (sdpu_is_base_uuid (p)) {
                if ((p[0] == 0) && (p[1] == 0)) {
                    p_attr->attr_len_type = (p_attr->attr_len_type & ~SDP_DISC_ATTR_LEN_MASK) | 2;
                    p += 2;
                    BE_STREAM_TO_UINT16 (p_attr->attr_value.v.u16, p);
                    p += MAX_UUID_SIZE - 4;
                } else {
                    p_attr->attr_len_type = (p_attr->attr_len_type & ~SDP_DISC_ATTR_LEN_MASK) | 4;
                    BE_STREAM_TO_UINT32 (p_attr->attr_value.v.u32, p);
                    p += MAX_UUID_SIZE - 4;
                }
            } else {







                BE_STREAM_TO_ARRAY (p, p_attr->attr_value.v.array, (INT32)attr_len);
            }
            break;
        default:
            SDP_TRACE_WARNING ("SDP - bad len in UUID attr: %d\n", attr_len);
            return (p + attr_len);
        }
        break;

    case 133:
    case 134:

        p_db->p_free_mem += sizeof (tSDP_DISC_ATTR);
        p_db->mem_free -= sizeof (tSDP_DISC_ATTR);
        p_end = p + attr_len;
        total_len = 0;


        if (nest_level >= MAX_NEST_LEVELS) {
            SDP_TRACE_ERROR ("SDP - attr nesting too deep\n");
            return (p_end);
        }
        if (is_additional_list != 0 || attr_id == ATTR_ID_ADDITION_PROTO_DESC_LISTS) {
            nest_level |= SDP_ADDITIONAL_LIST_MASK;
        }


        while (p < p_end) {

            p = add_attr (p, p_db, p_rec, 0, p_attr, (UINT8)(nest_level + 1));

            if (!p) {
                return (((void*)0));
            }
        }
        break;

    case 132:
    case 129:
        BE_STREAM_TO_ARRAY (p, p_attr->attr_value.v.array, (INT32)attr_len);
        break;

    case 135:
        switch (attr_len) {
        case 1:
            p_attr->attr_value.v.u8 = *p++;
            break;
        default:
            SDP_TRACE_WARNING ("SDP - bad len in boolean attr: %d\n", attr_len);
            return (p + attr_len);
        }
        break;

    default:
        break;
    }

    p_db->p_free_mem += total_len;
    p_db->mem_free -= total_len;


    if (!p_parent_attr) {
        if (!p_rec->p_first_attr) {
            p_rec->p_first_attr = p_attr;
        } else {
            tSDP_DISC_ATTR *p_attr1 = p_rec->p_first_attr;

            while (p_attr1->p_next_attr) {
                p_attr1 = p_attr1->p_next_attr;
            }

            p_attr1->p_next_attr = p_attr;
        }
    } else {
        if (!p_parent_attr->attr_value.v.p_sub_attr) {
            p_parent_attr->attr_value.v.p_sub_attr = p_attr;


        } else {
            tSDP_DISC_ATTR *p_attr1 = p_parent_attr->attr_value.v.p_sub_attr;



            while (p_attr1->p_next_attr) {
                p_attr1 = p_attr1->p_next_attr;
            }

            p_attr1->p_next_attr = p_attr;

        }
    }

    return (p);
}
