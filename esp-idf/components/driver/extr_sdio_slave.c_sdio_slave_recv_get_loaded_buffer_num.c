
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int buf_stailq_t ;
struct TYPE_2__ {int recv_link_list; } ;


 TYPE_1__ context ;
 int dump_queue (int * const) ;

__attribute__((used)) static void __attribute((unused)) sdio_slave_recv_get_loaded_buffer_num(void)
{
    buf_stailq_t *const queue = &context.recv_link_list;
    dump_queue(queue);
}
