
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_4__ {int height; int width; } ;
typedef TYPE_1__ hb_work_private_t ;
struct TYPE_5__ {TYPE_1__* private_data; } ;
typedef TYPE_2__ hb_work_object_t ;



__attribute__((used)) static int ColumnIsTransparent( hb_work_object_t * w, uint8_t * p )
{
    hb_work_private_t * pv = w->private_data;
    int i;
    for( i = 0; i < pv->height; i++ )
    {
        if( p[i*pv->width] )
        {
            return 0;
        }
    }
    return 1;
}
