
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int in_use; int * gap_cback; } ;
typedef TYPE_1__ tGAP_INFO ;


 int FALSE ;

void gap_free_cb (tGAP_INFO *p_cb)
{
    if (p_cb) {
        p_cb->gap_cback = ((void*)0);
        p_cb->in_use = FALSE;
    }
}
