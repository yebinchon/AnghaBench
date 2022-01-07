
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {int ssaTrack; int renderer; } ;
typedef TYPE_2__ hb_filter_private_t ;
struct TYPE_15__ {int start; } ;
struct TYPE_17__ {TYPE_1__ s; } ;
typedef TYPE_3__ hb_buffer_t ;
struct TYPE_18__ {struct TYPE_18__* next; } ;
typedef TYPE_4__ ASS_Image ;


 int ApplySub (TYPE_2__*,TYPE_3__*,TYPE_3__*) ;
 TYPE_3__* RenderSSAFrame (TYPE_2__*,TYPE_4__*) ;
 TYPE_4__* ass_render_frame (int ,int ,int,int *) ;
 int hb_buffer_close (TYPE_3__**) ;

__attribute__((used)) static void ApplySSASubs( hb_filter_private_t * pv, hb_buffer_t * buf )
{
    ASS_Image *frameList;
    hb_buffer_t *sub;

    frameList = ass_render_frame( pv->renderer, pv->ssaTrack,
                                  buf->s.start / 90, ((void*)0) );
    if ( !frameList )
        return;

    ASS_Image *frame;
    for (frame = frameList; frame; frame = frame->next) {
        sub = RenderSSAFrame( pv, frame );
        if( sub )
        {
            ApplySub( pv, buf, sub );
            hb_buffer_close( &sub );
        }
    }
}
