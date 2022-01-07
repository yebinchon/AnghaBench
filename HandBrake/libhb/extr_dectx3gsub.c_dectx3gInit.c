
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int hb_work_private_t ;
struct TYPE_9__ {int subtitle; int * private_data; } ;
typedef TYPE_3__ hb_work_object_t ;
struct TYPE_10__ {int* crop; TYPE_2__* title; } ;
typedef TYPE_4__ hb_job_t ;
struct TYPE_7__ {int height; int width; } ;
struct TYPE_8__ {TYPE_1__ geometry; } ;


 int HB_FONT_SANS ;
 int * calloc (int,int) ;
 int hb_subtitle_add_ssa_header (int ,int ,double,int,int) ;

__attribute__((used)) static int dectx3gInit( hb_work_object_t * w, hb_job_t * job )
{
    hb_work_private_t * pv;
    pv = calloc( 1, sizeof( hb_work_private_t ) );
    if (pv == ((void*)0))
        return 1;
    w->private_data = pv;





    int height = job->title->geometry.height - job->crop[0] - job->crop[1];
    int width = job->title->geometry.width - job->crop[2] - job->crop[3];
    hb_subtitle_add_ssa_header(w->subtitle, HB_FONT_SANS,
                               .066 * job->title->geometry.height,
                               width, height);

    return 0;
}
