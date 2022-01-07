
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {int * crop; } ;
typedef TYPE_1__ hb_job_t ;
struct TYPE_17__ {int type; int * crop; } ;
typedef TYPE_2__ hb_filter_private_t ;
struct TYPE_18__ {TYPE_2__* private_data; } ;
typedef TYPE_3__ hb_filter_object_t ;
 int cc608sub_post_init (TYPE_3__*,TYPE_1__*) ;
 int hb_log (char*,int) ;
 int pgssub_post_init (TYPE_3__*,TYPE_1__*) ;
 int ssa_post_init (TYPE_3__*,TYPE_1__*) ;
 int textsub_post_init (TYPE_3__*,TYPE_1__*) ;
 int vobsub_post_init (TYPE_3__*,TYPE_1__*) ;

__attribute__((used)) static int hb_rendersub_post_init( hb_filter_object_t * filter, hb_job_t *job )
{
    hb_filter_private_t * pv = filter->private_data;

    pv->crop[0] = job->crop[0];
    pv->crop[1] = job->crop[1];
    pv->crop[2] = job->crop[2];
    pv->crop[3] = job->crop[3];

    switch( pv->type )
    {
        case 128:
        {
            return vobsub_post_init( filter, job );
        } break;

        case 131:
        {
            return ssa_post_init( filter, job );
        } break;

        case 134:
        case 133:
        case 129:
        case 130:
        {
            return textsub_post_init( filter, job );
        } break;

        case 135:
        {
            return cc608sub_post_init( filter, job );
        } break;

        case 132:
        {
            return pgssub_post_init( filter, job );
        } break;

        default:
        {
            hb_log("rendersub: unsupported subtitle format %d", pv->type );
            return 1;
        } break;
    }
    return 0;
}
