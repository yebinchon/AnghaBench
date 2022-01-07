
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int* crop; TYPE_2__* title; } ;
typedef TYPE_3__ hb_job_t ;
struct TYPE_12__ {int subtitle; } ;
typedef TYPE_4__ hb_filter_object_t ;
struct TYPE_9__ {int height; int width; } ;
struct TYPE_10__ {TYPE_1__ geometry; } ;


 int HB_FONT_MONO ;
 int hb_subtitle_add_ssa_header (int ,int ,double,int,int) ;
 int ssa_post_init (TYPE_4__*,TYPE_3__*) ;

__attribute__((used)) static int cc608sub_post_init( hb_filter_object_t * filter, hb_job_t * job )
{


    int height = job->title->geometry.height - job->crop[0] - job->crop[1];
    int width = job->title->geometry.width - job->crop[2] - job->crop[3];
    int safe_height = 0.8 * job->title->geometry.height;

    hb_subtitle_add_ssa_header(filter->subtitle, HB_FONT_MONO,
                               .08 * safe_height, width, height);
    return ssa_post_init(filter, job);
}
