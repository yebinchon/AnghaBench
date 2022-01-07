
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {struct TYPE_11__* p_next_rec; TYPE_4__* p_first_attr; } ;
typedef TYPE_3__ tSDP_DISC_REC ;
struct TYPE_9__ {scalar_t__ u16; TYPE_4__* p_sub_attr; } ;
struct TYPE_10__ {TYPE_1__ v; } ;
struct TYPE_12__ {scalar_t__ attr_id; struct TYPE_12__* p_next_attr; TYPE_2__ attr_value; int attr_len_type; } ;
typedef TYPE_4__ tSDP_DISC_ATTR ;
struct TYPE_13__ {TYPE_3__* p_first_rec; } ;
typedef TYPE_5__ tSDP_DISCOVERY_DB ;
typedef scalar_t__ UINT16 ;


 scalar_t__ ATTR_ID_SERVICE_CLASS_ID_LIST ;
 scalar_t__ ATTR_ID_SERVICE_ID ;
 scalar_t__ DATA_ELE_SEQ_DESC_TYPE ;
 int SDP_DISC_ATTR_LEN (int ) ;
 scalar_t__ SDP_DISC_ATTR_TYPE (int ) ;
 int SDP_TRACE_DEBUG (char*,...) ;
 scalar_t__ UUID_DESC_TYPE ;
 scalar_t__ UUID_SERVCLASS_HDP_PROFILE ;
 scalar_t__ UUID_SERVCLASS_HDP_SINK ;
 scalar_t__ UUID_SERVCLASS_HDP_SOURCE ;

tSDP_DISC_REC *SDP_FindServiceInDb (tSDP_DISCOVERY_DB *p_db, UINT16 service_uuid, tSDP_DISC_REC *p_start_rec)
{

    tSDP_DISC_REC *p_rec;
    tSDP_DISC_ATTR *p_attr, *p_sattr, *p_extra_sattr;


    if (p_db == ((void*)0)) {
        return (((void*)0));
    }

    if (!p_start_rec) {
        p_rec = p_db->p_first_rec;
    } else {
        p_rec = p_start_rec->p_next_rec;
    }

    while (p_rec) {
        p_attr = p_rec->p_first_attr;
        while (p_attr) {
            if ((p_attr->attr_id == ATTR_ID_SERVICE_CLASS_ID_LIST)
                    && (SDP_DISC_ATTR_TYPE(p_attr->attr_len_type) == DATA_ELE_SEQ_DESC_TYPE)) {
                for (p_sattr = p_attr->attr_value.v.p_sub_attr; p_sattr; p_sattr = p_sattr->p_next_attr) {

                    if ((SDP_DISC_ATTR_TYPE(p_sattr->attr_len_type) == UUID_DESC_TYPE)
                            && (SDP_DISC_ATTR_LEN(p_sattr->attr_len_type) == 2) ) {
                        SDP_TRACE_DEBUG("SDP_FindServiceInDb - p_sattr value = 0x%x serviceuuid = 0x%x\r\n",
                                        p_sattr->attr_value.v.u16, service_uuid);
                        if (service_uuid == UUID_SERVCLASS_HDP_PROFILE) {
                            if ( (p_sattr->attr_value.v.u16 == UUID_SERVCLASS_HDP_SOURCE) || ( p_sattr->attr_value.v.u16 == UUID_SERVCLASS_HDP_SINK)) {
                                SDP_TRACE_DEBUG("SDP_FindServiceInDb found HDP source or sink\n" );
                                return (p_rec);
                            }
                        }

                    }

                    if (SDP_DISC_ATTR_TYPE(p_sattr->attr_len_type) == UUID_DESC_TYPE && (service_uuid == 0
                            || (SDP_DISC_ATTR_LEN(p_sattr->attr_len_type) == 2
                                && p_sattr->attr_value.v.u16 == service_uuid)))

                    {
                        return (p_rec);
                    }





                    else {
                        if (SDP_DISC_ATTR_TYPE(p_sattr->attr_len_type) == DATA_ELE_SEQ_DESC_TYPE) {

                            for (p_extra_sattr = p_sattr->attr_value.v.p_sub_attr; p_extra_sattr; p_extra_sattr = p_extra_sattr->p_next_attr) {

                                if ((SDP_DISC_ATTR_TYPE(p_extra_sattr->attr_len_type) == UUID_DESC_TYPE)
                                        && (SDP_DISC_ATTR_LEN(p_extra_sattr->attr_len_type) == 2)

                                        && ((p_extra_sattr->attr_value.v.u16 == service_uuid) || (service_uuid == 0))) {
                                    return (p_rec);
                                }
                            }
                        }
                    }
                }
                break;
            } else if (p_attr->attr_id == ATTR_ID_SERVICE_ID) {
                if ((SDP_DISC_ATTR_TYPE(p_attr->attr_len_type) == UUID_DESC_TYPE)
                        && (SDP_DISC_ATTR_LEN(p_attr->attr_len_type) == 2)

                        && ((p_attr->attr_value.v.u16 == service_uuid) || service_uuid == 0)) {
                    return (p_rec);
                }
            }

            p_attr = p_attr->p_next_attr;
        }

        p_rec = p_rec->p_next_rec;
    }


    return (((void*)0));
}
