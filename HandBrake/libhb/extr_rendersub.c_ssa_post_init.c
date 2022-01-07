
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int hb_list_t ;
struct TYPE_13__ {double den; scalar_t__ num; } ;
struct TYPE_14__ {int* crop; TYPE_3__ par; TYPE_2__* title; int * list_attachment; } ;
typedef TYPE_4__ hb_job_t ;
struct TYPE_15__ {int renderer; int ssaTrack; int ssa; } ;
typedef TYPE_5__ hb_filter_private_t ;
struct TYPE_16__ {TYPE_5__* private_data; } ;
typedef TYPE_6__ hb_filter_object_t ;
struct TYPE_17__ {scalar_t__ type; int size; int data; int name; } ;
typedef TYPE_7__ hb_attachment_t ;
struct TYPE_11__ {int height; int width; } ;
struct TYPE_12__ {TYPE_1__ geometry; } ;


 int ASS_HINTING_LIGHT ;
 scalar_t__ FONT_OTF_ATTACH ;
 scalar_t__ FONT_TTF_ATTACH ;
 int ass_add_font (int ,int ,int ,int ) ;
 int ass_library_init () ;
 int ass_new_track (int ) ;
 int ass_renderer_init (int ) ;
 int ass_set_aspect_ratio (int ,int,double) ;
 int ass_set_extract_fonts (int ,int) ;
 int ass_set_font_scale (int ,double) ;
 int ass_set_fonts (int ,char const*,char const*,int,int *,int) ;
 int ass_set_frame_size (int ,int,int) ;
 int ass_set_hinting (int ,int ) ;
 int ass_set_line_spacing (int ,double) ;
 int ass_set_message_cb (int ,int ,int *) ;
 int ass_set_style_overrides (int ,int *) ;
 int ass_set_use_margins (int ,int ) ;
 int hb_error (char*) ;
 int hb_list_count (int *) ;
 TYPE_7__* hb_list_item (int *,int) ;
 int hb_log (char*) ;
 int ssa_log ;

__attribute__((used)) static int ssa_post_init( hb_filter_object_t * filter, hb_job_t * job )
{
    hb_filter_private_t * pv = filter->private_data;

    pv->ssa = ass_library_init();
    if ( !pv->ssa ) {
        hb_error( "decssasub: libass initialization failed\n" );
        return 1;
    }


    ass_set_message_cb( pv->ssa, ssa_log, ((void*)0) );


    hb_list_t * list_attachment = job->list_attachment;
    int i;
    for ( i = 0; i < hb_list_count(list_attachment); i++ )
    {
        hb_attachment_t * attachment = hb_list_item( list_attachment, i );

        if ( attachment->type == FONT_TTF_ATTACH ||
             attachment->type == FONT_OTF_ATTACH )
        {
            ass_add_font(
                pv->ssa,
                attachment->name,
                attachment->data,
                attachment->size );
        }
    }

    ass_set_extract_fonts( pv->ssa, 1 );
    ass_set_style_overrides( pv->ssa, ((void*)0) );

    pv->renderer = ass_renderer_init( pv->ssa );
    if ( !pv->renderer ) {
        hb_log( "decssasub: renderer initialization failed\n" );
        return 1;
    }

    ass_set_use_margins( pv->renderer, 0 );
    ass_set_hinting( pv->renderer, ASS_HINTING_LIGHT );
    ass_set_font_scale( pv->renderer, 1.0 );
    ass_set_line_spacing( pv->renderer, 1.0 );




    const char *font = ((void*)0);
    const char *family = "Arial";


    ass_set_fonts( pv->renderer, font, family, 1, ((void*)0), 1 );


    pv->ssaTrack = ass_new_track( pv->ssa );
    if ( !pv->ssaTrack ) {
        hb_log( "decssasub: ssa track initialization failed\n" );
        return 1;
    }

    int height = job->title->geometry.height - job->crop[0] - job->crop[1];
    int width = job->title->geometry.width - job->crop[2] - job->crop[3];
    ass_set_frame_size( pv->renderer, width, height);

    double par = (double)job->par.num / job->par.den;
    ass_set_aspect_ratio( pv->renderer, 1, par );

    return 0;
}
