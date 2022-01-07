
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* p_next_rec; int remote_bd_addr; int * p_first_attr; } ;
typedef TYPE_1__ tSDP_DISC_REC ;
struct TYPE_6__ {int mem_free; TYPE_1__* p_first_rec; scalar_t__ p_free_mem; } ;
typedef TYPE_2__ tSDP_DISCOVERY_DB ;
typedef int BD_ADDR ;


 int BD_ADDR_LEN ;
 int memcpy (int ,int ,int ) ;

tSDP_DISC_REC *add_record (tSDP_DISCOVERY_DB *p_db, BD_ADDR p_bda)
{
    tSDP_DISC_REC *p_rec;


    if (p_db->mem_free < sizeof (tSDP_DISC_REC)) {
        return (((void*)0));
    }

    p_rec = (tSDP_DISC_REC *) p_db->p_free_mem;
    p_db->p_free_mem += sizeof (tSDP_DISC_REC);
    p_db->mem_free -= sizeof (tSDP_DISC_REC);

    p_rec->p_first_attr = ((void*)0);
    p_rec->p_next_rec = ((void*)0);

    memcpy (p_rec->remote_bd_addr, p_bda, BD_ADDR_LEN);


    if (!p_db->p_first_rec) {
        p_db->p_first_rec = p_rec;
    } else {
        tSDP_DISC_REC *p_rec1 = p_db->p_first_rec;

        while (p_rec1->p_next_rec) {
            p_rec1 = p_rec1->p_next_rec;
        }

        p_rec1->p_next_rec = p_rec;
    }

    return (p_rec);
}
