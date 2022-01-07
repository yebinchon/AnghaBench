
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_13__ {scalar_t__ scr_delta; scalar_t__ last_scr; scalar_t__ last_pts; int scr_changes; } ;
typedef TYPE_2__ hb_psdemux_t ;
struct TYPE_12__ {scalar_t__ pcr; scalar_t__ start; scalar_t__ type; scalar_t__ stop; scalar_t__ renderOffset; scalar_t__ discontinuity; } ;
struct TYPE_14__ {struct TYPE_14__* next; TYPE_1__ s; } ;
typedef TYPE_3__ hb_buffer_t ;
typedef int hb_buffer_list_t ;


 scalar_t__ AUDIO_BUF ;
 scalar_t__ AV_NOPTS_VALUE ;
 scalar_t__ VIDEO_BUF ;
 int check_mpeg_scr (TYPE_2__*,scalar_t__,int) ;
 int hb_buffer_list_append (int *,TYPE_3__*) ;
 int restore_chap (TYPE_2__*,TYPE_3__*) ;
 int save_chap (TYPE_2__*,TYPE_3__*) ;

__attribute__((used)) static void demux_mpeg( hb_buffer_t *buf, hb_buffer_list_t *list_es,
                        hb_psdemux_t *state, int tolerance )
{
    while ( buf )
    {
        save_chap( state, buf );
        if ( state )
        {
            int discontinuity = 0;


            if ( buf->s.pcr >= 0 )
            {

                discontinuity = check_mpeg_scr( state, buf->s.pcr, tolerance );
                buf->s.pcr = AV_NOPTS_VALUE;


                if ( buf->s.start >= 0 )
                    state->scr_delta = buf->s.start - state->last_scr;
                else
                    state->scr_delta = 0;
            }
            if ( !discontinuity && buf->s.discontinuity )
            {


                ++state->scr_changes;
                state->last_scr = buf->s.start;
                state->scr_delta = 0;
            }

            if ( buf->s.start >= 0 )
            {
                int64_t fdelta;
                if (buf->s.type == AUDIO_BUF || buf->s.type == VIDEO_BUF)
                {
                    if ( state->last_pts >= 0 )
                    {
                        fdelta = buf->s.start - state->last_pts;
                        if ( fdelta < -5 * 90000LL || fdelta > 5 * 90000LL )
                        {





                            ++state->scr_changes;
                            state->last_scr = buf->s.start;
                            state->scr_delta = 0;
                        }
                    }
                    state->last_pts = buf->s.start;
                }
                if (state->last_scr != AV_NOPTS_VALUE)
                {
                    fdelta = buf->s.start - state->last_scr - state->scr_delta;
                    if ( fdelta < -300 * 90000LL || fdelta > 300 * 90000LL )
                    {

                        buf->s.renderOffset = AV_NOPTS_VALUE;
                        buf->s.start = AV_NOPTS_VALUE;
                        buf->s.stop = AV_NOPTS_VALUE;
                    }
                    else
                    {





                        state->scr_delta = buf->s.start - state->last_scr;
                    }
                }
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
