
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ inq_count; int bd_addr; } ;
typedef TYPE_1__ tINQ_BDADDR ;
struct TYPE_5__ {int inq_active; scalar_t__ num_bd_entries; scalar_t__ inq_counter; scalar_t__ max_bd_entries; TYPE_1__* p_bd_db; } ;
typedef TYPE_2__ tBTM_INQUIRY_VAR_ST ;
typedef scalar_t__ UINT16 ;
struct TYPE_6__ {TYPE_2__ btm_inq_vars; } ;
typedef int BOOLEAN ;
typedef int BD_ADDR ;


 int BD_ADDR_LEN ;
 int BTM_PERIODIC_INQUIRY_ACTIVE ;
 int FALSE ;
 int TRUE ;
 TYPE_3__ btm_cb ;
 int memcmp (int ,int ,int ) ;
 int memcpy (int ,int ,int ) ;

BOOLEAN btm_inq_find_bdaddr (BD_ADDR p_bda)
{
    tBTM_INQUIRY_VAR_ST *p_inq = &btm_cb.btm_inq_vars;
    tINQ_BDADDR *p_db = &p_inq->p_bd_db[0];
    UINT16 xx;


    if ((p_inq->inq_active & BTM_PERIODIC_INQUIRY_ACTIVE) || !p_db) {
        return (FALSE);
    }

    for (xx = 0; xx < p_inq->num_bd_entries; xx++, p_db++) {
        if (!memcmp(p_db->bd_addr, p_bda, BD_ADDR_LEN)
                && p_db->inq_count == p_inq->inq_counter) {
            return (TRUE);
        }
    }

    if (xx < p_inq->max_bd_entries) {
        p_db->inq_count = p_inq->inq_counter;
        memcpy(p_db->bd_addr, p_bda, BD_ADDR_LEN);
        p_inq->num_bd_entries++;
    }


    return (FALSE);
}
