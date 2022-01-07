
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int owner; } ;
typedef TYPE_1__ buf_desc_t ;


 TYPE_1__* STAILQ_NEXT (TYPE_1__*,int ) ;
 int assert (int) ;
 int critical_enter_recv () ;
 int critical_exit_recv () ;
 int qe ;
 TYPE_1__* recv_get_first_empty_buf () ;
 int recv_size_inc () ;
 int recv_size_reset () ;

__attribute__((used)) static void recv_reset_counter(void)
{
    recv_size_reset();

    critical_enter_recv();
    buf_desc_t *desc = recv_get_first_empty_buf();
    while (desc != ((void*)0)) {
        assert(desc->owner == 1);
        recv_size_inc();
        desc = STAILQ_NEXT(desc, qe);
    }
    critical_exit_recv();
}
