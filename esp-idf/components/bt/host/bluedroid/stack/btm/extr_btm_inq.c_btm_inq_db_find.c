
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int remote_bd_addr; } ;
struct TYPE_9__ {TYPE_2__ results; } ;
struct TYPE_10__ {TYPE_3__ inq_info; scalar_t__ in_use; } ;
typedef TYPE_4__ tINQ_DB_ENT ;
typedef scalar_t__ UINT16 ;
struct TYPE_7__ {TYPE_4__* inq_db; } ;
struct TYPE_11__ {TYPE_1__ btm_inq_vars; } ;
typedef int BD_ADDR ;


 int BD_ADDR_LEN ;
 scalar_t__ BTM_INQ_DB_SIZE ;
 TYPE_6__ btm_cb ;
 int memcmp (int ,int ,int ) ;

tINQ_DB_ENT *btm_inq_db_find (BD_ADDR p_bda)
{
    UINT16 xx;
    tINQ_DB_ENT *p_ent = btm_cb.btm_inq_vars.inq_db;

    for (xx = 0; xx < BTM_INQ_DB_SIZE; xx++, p_ent++) {
        if ((p_ent->in_use) && (!memcmp (p_ent->inq_info.results.remote_bd_addr, p_bda, BD_ADDR_LEN))) {
            return (p_ent);
        }
    }


    return (((void*)0));
}
