
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int remote_bd_addr; } ;
struct TYPE_7__ {TYPE_1__ results; } ;
struct TYPE_8__ {scalar_t__ in_use; TYPE_2__ inq_info; } ;
typedef TYPE_3__ tINQ_DB_ENT ;
struct TYPE_9__ {int state; int inq_active; TYPE_3__* inq_db; } ;
typedef TYPE_4__ tBTM_INQUIRY_VAR_ST ;
typedef scalar_t__ UINT16 ;
struct TYPE_10__ {TYPE_4__ btm_inq_vars; } ;
typedef int * BD_ADDR ;


 int BD_ADDR_LEN ;
 scalar_t__ BTM_INQ_DB_SIZE ;
 int BTM_TRACE_DEBUG (char*,int ,int ) ;
 scalar_t__ FALSE ;
 TYPE_5__ btm_cb ;
 int memcmp (int ,int *,int ) ;

void btm_clr_inq_db (BD_ADDR p_bda)
{
    tBTM_INQUIRY_VAR_ST *p_inq = &btm_cb.btm_inq_vars;
    tINQ_DB_ENT *p_ent = p_inq->inq_db;
    UINT16 xx;


    BTM_TRACE_DEBUG ("btm_clr_inq_db: inq_active:0x%x state:%d\n",
                     btm_cb.btm_inq_vars.inq_active, btm_cb.btm_inq_vars.state);

    for (xx = 0; xx < BTM_INQ_DB_SIZE; xx++, p_ent++) {
        if (p_ent->in_use) {

            if (p_bda == ((void*)0) ||
                    (!memcmp (p_ent->inq_info.results.remote_bd_addr, p_bda, BD_ADDR_LEN))) {
                p_ent->in_use = FALSE;
            }
        }
    }

    BTM_TRACE_DEBUG ("inq_active:0x%x state:%d\n",
                     btm_cb.btm_inq_vars.inq_active, btm_cb.btm_inq_vars.state);

}
