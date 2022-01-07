
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int (* tBTM_CMPL_CB ) (void*) ;
struct TYPE_5__ {int (* p_rln_cmpl_cb ) (void*) ;} ;
struct TYPE_7__ {TYPE_1__ devcb; } ;
struct TYPE_6__ {scalar_t__ param; } ;
typedef scalar_t__ TIMER_PARAM_TYPE ;
typedef TYPE_2__ TIMER_LIST_ENT ;


 scalar_t__ TT_DEV_RLN ;
 TYPE_4__ btm_cb ;
 int stub1 (void*) ;

void btm_dev_timeout (TIMER_LIST_ENT *p_tle)
{
    TIMER_PARAM_TYPE timer_type = (TIMER_PARAM_TYPE)p_tle->param;

    if (timer_type == (TIMER_PARAM_TYPE)TT_DEV_RLN) {
        tBTM_CMPL_CB *p_cb = btm_cb.devcb.p_rln_cmpl_cb;

        btm_cb.devcb.p_rln_cmpl_cb = ((void*)0);

        if (p_cb) {
            (*p_cb)((void *) ((void*)0));
        }
    }
}
