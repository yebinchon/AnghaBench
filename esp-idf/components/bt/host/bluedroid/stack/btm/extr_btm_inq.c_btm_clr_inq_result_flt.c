
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ max_bd_entries; scalar_t__ num_bd_entries; int * p_bd_db; } ;
typedef TYPE_1__ tBTM_INQUIRY_VAR_ST ;
struct TYPE_4__ {TYPE_1__ btm_inq_vars; } ;


 TYPE_2__ btm_cb ;
 int osi_free (int *) ;

__attribute__((used)) static void btm_clr_inq_result_flt (void)
{
    tBTM_INQUIRY_VAR_ST *p_inq = &btm_cb.btm_inq_vars;

    if (p_inq->p_bd_db) {
        osi_free(p_inq->p_bd_db);
        p_inq->p_bd_db = ((void*)0);
    }
    p_inq->num_bd_entries = 0;
    p_inq->max_bd_entries = 0;
}
