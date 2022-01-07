
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * rcv_pending_q; } ;


 int FREE_AND_RESET (int ) ;
 int l2c_cb_ptr ;
 TYPE_1__ l2cb ;
 int list_free (int *) ;

void l2c_free(void)
{
    list_free(l2cb.rcv_pending_q);
    l2cb.rcv_pending_q = ((void*)0);



}
