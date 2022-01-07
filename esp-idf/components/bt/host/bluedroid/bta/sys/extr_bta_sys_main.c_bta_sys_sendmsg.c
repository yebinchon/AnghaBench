
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OSI_THREAD_MAX_TIMEOUT ;
 int SIG_BTU_BTA_MSG ;
 int btu_task_post (int ,void*,int ) ;
 int osi_free (void*) ;

void bta_sys_sendmsg(void *p_msg)
{




    if (btu_task_post(SIG_BTU_BTA_MSG, p_msg, OSI_THREAD_MAX_TIMEOUT) == 0) {
        osi_free(p_msg);
    }
}
