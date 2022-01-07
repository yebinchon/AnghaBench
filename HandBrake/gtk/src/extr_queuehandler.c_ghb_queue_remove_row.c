
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int queue; } ;
typedef TYPE_1__ signal_user_data_t ;


 int ghb_queue_buttons_grey (TYPE_1__*) ;
 int ghb_queue_remove_row_internal (TYPE_1__*,int) ;
 int ghb_save_queue (int ) ;

void
ghb_queue_remove_row(signal_user_data_t *ud, int index)
{
    ghb_queue_remove_row_internal(ud, index);
    ghb_save_queue(ud->queue);
    ghb_queue_buttons_grey(ud);
}
