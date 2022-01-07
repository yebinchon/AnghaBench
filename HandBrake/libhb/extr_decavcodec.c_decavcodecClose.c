
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int hb_work_private_t ;
struct TYPE_3__ {int * private_data; } ;
typedef TYPE_1__ hb_work_object_t ;


 int closePrivData (int **) ;

__attribute__((used)) static void decavcodecClose( hb_work_object_t * w )
{
    hb_work_private_t * pv = w->private_data;

    if ( pv )
    {
        closePrivData( &pv );
        w->private_data = ((void*)0);
    }
}
