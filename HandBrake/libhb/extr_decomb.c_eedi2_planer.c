
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int eedi2_taskset; TYPE_4__** eedi_half; TYPE_2__** ref; int tff; } ;
typedef TYPE_5__ hb_filter_private_t ;
struct TYPE_10__ {TYPE_3__* plane; } ;
struct TYPE_9__ {int data; } ;
struct TYPE_8__ {TYPE_1__* plane; } ;
struct TYPE_7__ {int stride; int height; int * data; } ;


 size_t SRCPF ;
 int eedi2_fill_half_height_buffer_plane (int *,int ,int,int) ;
 int taskset_cycle (int *) ;

__attribute__((used)) static void eedi2_planer( hb_filter_private_t * pv )
{

    int pp;
    for( pp = 0; pp < 3; pp++ )
    {
        int pitch = pv->ref[1]->plane[pp].stride;
        int height = pv->ref[1]->plane[pp].height;
        int start_line = !pv->tff;

        eedi2_fill_half_height_buffer_plane(
                &pv->ref[1]->plane[pp].data[pitch * start_line],
                pv->eedi_half[SRCPF]->plane[pp].data, pitch, height );
    }





    taskset_cycle( &pv->eedi2_taskset );
}
