
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int work_die; int work_error; } ;
typedef TYPE_1__ hb_handle_t ;


 int HB_ERROR_CANCELED ;
 int hb_resume (TYPE_1__*) ;

void hb_stop( hb_handle_t * h )
{
    h->work_error = HB_ERROR_CANCELED;
    h->work_die = 1;
    hb_resume( h );
}
