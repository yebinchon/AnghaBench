
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ num_attributes; TYPE_2__* attribute; } ;
typedef TYPE_1__ tSDP_RECORD ;
struct TYPE_6__ {scalar_t__ id; } ;
typedef TYPE_2__ tSDP_ATTRIBUTE ;
typedef scalar_t__ UINT16 ;



tSDP_ATTRIBUTE *sdp_db_find_attr_in_rec (tSDP_RECORD *p_rec, UINT16 start_attr,
        UINT16 end_attr)
{
    tSDP_ATTRIBUTE *p_at;
    UINT16 xx;


    for (xx = 0, p_at = &p_rec->attribute[0]; xx < p_rec->num_attributes;
            xx++, p_at++) {
        if ((p_at->id >= start_attr) && (p_at->id <= end_attr)) {
            return (p_at);
        }
    }


    return (((void*)0));
}
