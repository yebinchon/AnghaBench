
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int queue; } ;
typedef TYPE_1__ signal_user_data_t ;


 int ghb_array_len (int ) ;
 int ghb_queue_update_status (TYPE_1__*,int,int) ;

void
ghb_update_all_status(signal_user_data_t *ud, int status)
{
    int count, ii;

    count = ghb_array_len(ud->queue);
    for (ii = 0; ii < count; ii++)
    {
        ghb_queue_update_status(ud, ii, status);
    }
}
