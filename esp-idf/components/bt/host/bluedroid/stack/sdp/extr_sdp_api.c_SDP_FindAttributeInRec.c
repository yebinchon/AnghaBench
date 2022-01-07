
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* p_first_attr; } ;
typedef TYPE_1__ tSDP_DISC_REC ;
struct TYPE_6__ {scalar_t__ attr_id; struct TYPE_6__* p_next_attr; } ;
typedef TYPE_2__ tSDP_DISC_ATTR ;
typedef scalar_t__ UINT16 ;



tSDP_DISC_ATTR *SDP_FindAttributeInRec (tSDP_DISC_REC *p_rec, UINT16 attr_id)
{

    tSDP_DISC_ATTR *p_attr;

    p_attr = p_rec->p_first_attr;
    while (p_attr) {
        if (p_attr->attr_id == attr_id) {
            return (p_attr);
        }

        p_attr = p_attr->p_next_attr;
    }


    return (((void*)0));
}
