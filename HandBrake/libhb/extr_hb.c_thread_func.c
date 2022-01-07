
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int hb_title_t ;
struct TYPE_10__ {scalar_t__ paused; int error; } ;
struct TYPE_11__ {TYPE_2__ working; } ;
struct TYPE_12__ {TYPE_3__ param; int state; } ;
struct TYPE_9__ {int list_title; } ;
struct TYPE_13__ {scalar_t__ work_thread; scalar_t__ scan_thread; scalar_t__ pause_date; scalar_t__ pause_duration; TYPE_4__ state; scalar_t__ paused; int state_lock; int work_error; TYPE_1__ title_set; scalar_t__ scan_die; int die; int pid; } ;
typedef TYPE_5__ hb_handle_t ;


 int HB_STATE_SCANDONE ;
 int HB_STATE_WORKDONE ;
 int free (char*) ;
 int getpid () ;
 scalar_t__ hb_get_date () ;
 char* hb_get_temporary_directory () ;
 int hb_list_count (int ) ;
 int * hb_list_item (int ,int ) ;
 int hb_list_rem (int ,int *) ;
 int hb_lock (int ) ;
 int hb_log (char*,...) ;
 int hb_mkdir (char*) ;
 int hb_remove_previews (TYPE_5__*) ;
 int hb_scan_stop (TYPE_5__*) ;
 int hb_snooze (int) ;
 int hb_stop (TYPE_5__*) ;
 int hb_thread_close (scalar_t__*) ;
 scalar_t__ hb_thread_has_exited (scalar_t__) ;
 int hb_title_close (int **) ;
 int hb_unlock (int ) ;

__attribute__((used)) static void thread_func( void * _h )
{
    hb_handle_t * h = (hb_handle_t *) _h;
    char * dirname;

    h->pid = getpid();


    dirname = hb_get_temporary_directory();

    hb_mkdir( dirname );
    free(dirname);

    while( !h->die )
    {

        if( h->scan_thread &&
            hb_thread_has_exited( h->scan_thread ) )
        {
            hb_thread_close( &h->scan_thread );

            if ( h->scan_die )
            {
                hb_title_t * title;

                hb_remove_previews( h );
                while( ( title = hb_list_item( h->title_set.list_title, 0 ) ) )
                {
                    hb_list_rem( h->title_set.list_title, title );
                    hb_title_close( &title );
                }

                hb_log( "hb_scan: canceled" );
            }
            else
            {
                hb_log( "libhb: scan thread found %d valid title(s)",
                        hb_list_count( h->title_set.list_title ) );
            }
            hb_lock( h->state_lock );
            h->state.state = HB_STATE_SCANDONE;
            hb_unlock( h->state_lock );
        }


        if( h->work_thread &&
            hb_thread_has_exited( h->work_thread ) )
        {
            hb_thread_close( &h->work_thread );

            hb_log( "libhb: work result = %d", h->work_error );
            hb_lock( h->state_lock );
            h->state.state = HB_STATE_WORKDONE;
            h->state.param.working.error = h->work_error;

            hb_unlock( h->state_lock );
        }

        if (h->paused)
        {
            h->state.param.working.paused = h->pause_duration +
                                            hb_get_date() - h->pause_date;
        }
        hb_snooze( 50 );
    }

    if( h->scan_thread )
    {
        hb_scan_stop( h );
        hb_thread_close( &h->scan_thread );
    }
    if( h->work_thread )
    {
        hb_stop( h );
        hb_thread_close( &h->work_thread );
    }
    hb_remove_previews( h );
}
