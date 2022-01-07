
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int type; int * sws; } ;
typedef TYPE_1__ hb_filter_private_t ;
struct TYPE_9__ {TYPE_1__* private_data; } ;
typedef TYPE_2__ hb_filter_object_t ;
 int hb_error (char*,int) ;
 int pgssub_close (TYPE_2__*) ;
 int ssa_close (TYPE_2__*) ;
 int sws_freeContext (int *) ;
 int textsub_close (TYPE_2__*) ;
 int vobsub_close (TYPE_2__*) ;

__attribute__((used)) static void hb_rendersub_close( hb_filter_object_t * filter )
{
    hb_filter_private_t * pv = filter->private_data;

    if (pv->sws != ((void*)0))
    {
        sws_freeContext(pv->sws);
    }
    switch( pv->type )
    {
        case 128:
        {
            vobsub_close( filter );
        } break;

        case 131:
        {
            ssa_close( filter );
        } break;

        case 134:
        case 133:
        case 135:
        case 129:
        case 130:
        {
            textsub_close( filter );
        } break;

        case 132:
        {
            pgssub_close( filter );
        } break;

        default:
        {
            hb_error("rendersub: unsupported subtitle format %d", pv->type );
        } break;
    }
}
