
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tSDP_RECORD ;
struct TYPE_4__ {size_t num_records; TYPE_3__* record; } ;
typedef TYPE_1__ tSDP_DB ;
typedef int UINT8 ;
typedef int UINT32 ;
struct TYPE_6__ {int record_handle; } ;
struct TYPE_5__ {TYPE_1__ server_db; } ;


 int ATTR_ID_SERVICE_RECORD_HDL ;
 int SDP_AddAttribute (int,int ,int ,int,int *) ;
 size_t SDP_MAX_RECORDS ;
 int SDP_TRACE_DEBUG (char*,size_t) ;
 int SDP_TRACE_ERROR (char*,size_t) ;
 int UINT32_TO_BE_FIELD (int *,int) ;
 int UINT_DESC_TYPE ;
 int memset (TYPE_3__*,int ,int) ;
 TYPE_2__ sdp_cb ;

UINT32 SDP_CreateRecord (void)
{

    UINT32 handle;
    UINT8 buf[4];
    tSDP_DB *p_db = &sdp_cb.server_db;


    if (p_db->num_records < SDP_MAX_RECORDS) {
        memset (&p_db->record[p_db->num_records], 0,
                sizeof (tSDP_RECORD));



        if (p_db->num_records) {
            handle = p_db->record[p_db->num_records - 1].record_handle + 1;
        } else {
            handle = 0x10000;
        }

        p_db->record[p_db->num_records].record_handle = handle;

        p_db->num_records++;
        SDP_TRACE_DEBUG("SDP_CreateRecord ok, num_records:%d\n", p_db->num_records);

        UINT32_TO_BE_FIELD (buf, handle);
        SDP_AddAttribute (handle, ATTR_ID_SERVICE_RECORD_HDL, UINT_DESC_TYPE,
                          4, buf);

        return (p_db->record[p_db->num_records - 1].record_handle);
    } else {
        SDP_TRACE_ERROR("SDP_CreateRecord fail, exceed maximum records:%d\n", SDP_MAX_RECORDS);
    }

    return (0);
}
