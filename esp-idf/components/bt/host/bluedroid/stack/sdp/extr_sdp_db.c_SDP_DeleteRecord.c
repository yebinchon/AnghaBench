
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ record_handle; scalar_t__ num_attributes; TYPE_1__* attribute; } ;
typedef TYPE_3__ tSDP_RECORD ;
typedef scalar_t__ UINT32 ;
typedef scalar_t__ UINT16 ;
struct TYPE_6__ {scalar_t__ num_records; scalar_t__ di_primary_handle; TYPE_3__* record; } ;
struct TYPE_8__ {TYPE_2__ server_db; } ;
struct TYPE_5__ {int value_ptr; } ;
typedef int BOOLEAN ;


 int FALSE ;
 int SDP_TRACE_DEBUG (char*,scalar_t__) ;
 int TRUE ;
 TYPE_4__ sdp_cb ;

BOOLEAN SDP_DeleteRecord (UINT32 handle)
{

    UINT16 xx, yy, zz;
    tSDP_RECORD *p_rec = &sdp_cb.server_db.record[0];

    if (handle == 0 || sdp_cb.server_db.num_records == 0) {

        sdp_cb.server_db.num_records = 0;


        sdp_cb.server_db.di_primary_handle = 0;

        return (TRUE);
    } else {

        for (xx = 0; xx < sdp_cb.server_db.num_records; xx++, p_rec++) {
            if (p_rec->record_handle == handle) {

                for (yy = xx; yy < sdp_cb.server_db.num_records; yy++, p_rec++) {
                    *p_rec = *(p_rec + 1);


                    for (zz = 0; zz < p_rec->num_attributes; zz++) {
                        p_rec->attribute[zz].value_ptr -= sizeof(tSDP_RECORD);
                    }
                }

                sdp_cb.server_db.num_records--;

                SDP_TRACE_DEBUG("SDP_DeleteRecord ok, num_records:%d\n", sdp_cb.server_db.num_records);


                if ( sdp_cb.server_db.di_primary_handle == handle ) {
                    sdp_cb.server_db.di_primary_handle = 0;
                }

                return (TRUE);
            }
        }
    }

    return (FALSE);
}
