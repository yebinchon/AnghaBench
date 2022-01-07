
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ scr_changes; scalar_t__ last_scr; } ;
typedef TYPE_2__ hb_psdemux_t ;
struct TYPE_11__ {scalar_t__ start; scalar_t__ renderOffset; scalar_t__ type; } ;
struct TYPE_13__ {struct TYPE_13__* next; TYPE_1__ s; } ;
typedef TYPE_3__ hb_buffer_t ;
typedef int hb_buffer_list_t ;


 scalar_t__ AV_NOPTS_VALUE ;
 scalar_t__ VIDEO_BUF ;
 int hb_buffer_list_append (int *,TYPE_3__*) ;
 int restore_chap (TYPE_2__*,TYPE_3__*) ;
 int save_chap (TYPE_2__*,TYPE_3__*) ;

__attribute__((used)) static void demux_null( hb_buffer_t * buf, hb_buffer_list_t * list_es,
                        hb_psdemux_t* state )
{
    while ( buf )
    {
        save_chap( state, buf );
        if ( state )
        {


            if (state->scr_changes == 0 &&
                (buf->s.start != AV_NOPTS_VALUE ||
                 buf->s.renderOffset != AV_NOPTS_VALUE))
            {
                ++state->scr_changes;
                state->last_scr = buf->s.start >= 0 ? buf->s.start : buf->s.renderOffset;
            }

            if ( buf->s.type == VIDEO_BUF )
            {
                restore_chap( state, buf );
            }
        }

        hb_buffer_t *tmp = buf->next;
        buf->next = ((void*)0);
        hb_buffer_list_append(list_es, buf);
        buf = tmp;
    }
}
