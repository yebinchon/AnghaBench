
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int private_data; } ;
typedef TYPE_1__ hb_work_object_t ;


 int free (int ) ;

void encsubClose( hb_work_object_t * w )
{
    free( w->private_data );
}
