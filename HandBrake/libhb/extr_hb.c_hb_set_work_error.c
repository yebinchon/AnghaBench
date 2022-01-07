
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int work_error; } ;
typedef TYPE_1__ hb_handle_t ;
typedef int hb_error_code ;



void hb_set_work_error( hb_handle_t * h, hb_error_code err )
{
    h->work_error = err;
}
