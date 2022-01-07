
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int inq_info; scalar_t__ in_use; } ;
typedef TYPE_2__ tINQ_DB_ENT ;
typedef int tBTM_INQ_INFO ;
typedef scalar_t__ UINT16 ;
struct TYPE_4__ {TYPE_2__* inq_db; } ;
struct TYPE_6__ {TYPE_1__ btm_inq_vars; } ;


 scalar_t__ BTM_INQ_DB_SIZE ;
 TYPE_3__ btm_cb ;

tBTM_INQ_INFO *BTM_InqDbFirst (void)
{
    UINT16 xx;
    tINQ_DB_ENT *p_ent = btm_cb.btm_inq_vars.inq_db;

    for (xx = 0; xx < BTM_INQ_DB_SIZE; xx++, p_ent++) {
        if (p_ent->in_use) {
            return (&p_ent->inq_info);
        }
    }


    return ((tBTM_INQ_INFO *)((void*)0));
}
