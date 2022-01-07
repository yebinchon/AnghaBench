
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tSDP_UUID_SEQ ;
typedef int tSDP_RECORD ;
typedef int tSDP_ATTR_SEQ ;
typedef int UINT16 ;


 int * sdp_db_service_search (int *,int *) ;
 int sdpu_get_attrib_seq_len (int *,int *) ;

UINT16 sdpu_get_list_len(tSDP_UUID_SEQ *uid_seq, tSDP_ATTR_SEQ *attr_seq)
{
    tSDP_RECORD *p_rec;
    UINT16 len = 0;
    UINT16 len1;

    for (p_rec = sdp_db_service_search (((void*)0), uid_seq); p_rec; p_rec = sdp_db_service_search (p_rec, uid_seq)) {
        len += 3;

        len1 = sdpu_get_attrib_seq_len(p_rec, attr_seq );

        if (len1 != 0) {
            len += len1;
        } else {
            len -= 3;
        }
    }
    return len;
}
