
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ portBASE_TYPE ;
typedef int buf_stailq_t ;
struct TYPE_5__ {int owner; } ;
typedef TYPE_1__ buf_desc_t ;
struct TYPE_6__ {int recv_event; int recv_link_list; } ;


 TYPE_1__* STAILQ_FIRST (int * const) ;
 int STAILQ_INSERT_TAIL (int * const,TYPE_1__*,int ) ;
 int STAILQ_REMOVE_HEAD (int * const,int ) ;
 int assert (int) ;
 TYPE_2__ context ;
 int critical_enter_recv () ;
 int critical_exit_recv () ;
 scalar_t__ pdFALSE ;
 int qe ;
 int recv_size_inc () ;
 scalar_t__ xSemaphoreTake (int ,int ) ;

__attribute__((used)) static void recv_flush_data(void)
{
    buf_stailq_t *const queue = &context.recv_link_list;

    critical_enter_recv();
    while(1) {
        portBASE_TYPE ret = xSemaphoreTake(context.recv_event, 0);
        if (ret == pdFALSE) break;

        buf_desc_t *desc = STAILQ_FIRST(queue);
        assert (desc != ((void*)0) && desc->owner == 0);
        STAILQ_REMOVE_HEAD(queue, qe);
        desc->owner = 1;
        STAILQ_INSERT_TAIL(queue, desc, qe);
        recv_size_inc();

    }
    critical_exit_recv();
}
