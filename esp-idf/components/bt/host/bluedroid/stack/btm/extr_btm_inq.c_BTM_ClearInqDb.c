
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBTM_STATUS ;
struct TYPE_3__ {scalar_t__ inq_active; scalar_t__ inqfilt_active; } ;
typedef TYPE_1__ tBTM_INQUIRY_VAR_ST ;
struct TYPE_4__ {TYPE_1__ btm_inq_vars; } ;
typedef int BD_ADDR ;


 int BTM_BUSY ;
 scalar_t__ BTM_INQUIRY_INACTIVE ;
 int BTM_SUCCESS ;
 TYPE_2__ btm_cb ;
 int btm_clr_inq_db (int ) ;

tBTM_STATUS BTM_ClearInqDb (BD_ADDR p_bda)
{
    tBTM_INQUIRY_VAR_ST *p_inq = &btm_cb.btm_inq_vars;


    if (p_inq->inq_active != BTM_INQUIRY_INACTIVE ||
            p_inq->inqfilt_active) {
        return (BTM_BUSY);
    }

    btm_clr_inq_db(p_bda);

    return (BTM_SUCCESS);
}
