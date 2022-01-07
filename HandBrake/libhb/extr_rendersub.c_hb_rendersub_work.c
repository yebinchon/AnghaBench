
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int type; } ;
typedef TYPE_1__ hb_filter_private_t ;
struct TYPE_9__ {TYPE_1__* private_data; } ;
typedef TYPE_2__ hb_filter_object_t ;
typedef int hb_buffer_t ;
 int hb_error (char*,int) ;
 int pgssub_work (TYPE_2__*,int **,int **) ;
 int ssa_work (TYPE_2__*,int **,int **) ;
 int textsub_work (TYPE_2__*,int **,int **) ;
 int vobsub_work (TYPE_2__*,int **,int **) ;

__attribute__((used)) static int hb_rendersub_work( hb_filter_object_t * filter,
                                 hb_buffer_t ** buf_in,
                                 hb_buffer_t ** buf_out )
{
    hb_filter_private_t * pv = filter->private_data;
    switch( pv->type )
    {
        case 128:
        {
            return vobsub_work( filter, buf_in, buf_out );
        } break;

        case 131:
        {
            return ssa_work( filter, buf_in, buf_out );
        } break;

        case 134:
        case 133:
        case 135:
        case 129:
        case 130:
        {
            return textsub_work( filter, buf_in, buf_out );
        } break;

        case 132:
        {
            return pgssub_work( filter, buf_in, buf_out );
        } break;

        default:
        {
            hb_error("rendersub: unsupported subtitle format %d", pv->type );
            return 1;
        } break;
    }
}
