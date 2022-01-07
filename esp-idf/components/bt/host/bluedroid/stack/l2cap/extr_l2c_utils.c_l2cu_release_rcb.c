
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ psm; int in_use; } ;
typedef TYPE_1__ tL2C_RCB ;


 int FALSE ;

void l2cu_release_rcb (tL2C_RCB *p_rcb)
{
    p_rcb->in_use = FALSE;
    p_rcb->psm = 0;
}
