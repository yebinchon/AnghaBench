
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int hb_interjob_t ;
struct TYPE_8__ {int state; } ;
struct TYPE_7__ {void* list_title; } ;
struct TYPE_9__ {int pause_date; int main_thread; scalar_t__ die; void* interjob; void* pause_lock; TYPE_2__ state; void* state_lock; void* jobs; TYPE_1__ title_set; int system_sleep_opaque; scalar_t__ id; } ;
typedef TYPE_3__ hb_handle_t ;


 int HB_NORMAL_PRIORITY ;
 int HB_STATE_IDLE ;
 void* calloc (int,int) ;
 int hb_instance_counter ;
 void* hb_list_init () ;
 void* hb_lock_init () ;
 int hb_log (char*) ;
 int hb_log_level_set (TYPE_3__*,int) ;
 int hb_system_sleep_opaque_init () ;
 int hb_thread_init (char*,int ,TYPE_3__*,int ) ;
 int thread_func ;

hb_handle_t * hb_init( int verbose )
{
    hb_handle_t * h = calloc( sizeof( hb_handle_t ), 1 );


    hb_log_level_set(h, verbose);

    h->id = hb_instance_counter++;


    h->system_sleep_opaque = hb_system_sleep_opaque_init();

 h->title_set.list_title = hb_list_init();
    h->jobs = hb_list_init();

    h->state_lock = hb_lock_init();
    h->state.state = HB_STATE_IDLE;

    h->pause_lock = hb_lock_init();
    h->pause_date = -1;

    h->interjob = calloc( sizeof( hb_interjob_t ), 1 );


    hb_log( "hb_init: starting libhb thread" );
    h->die = 0;
    h->main_thread = hb_thread_init( "libhb", thread_func, h,
                                     HB_NORMAL_PRIORITY );

    return h;
}
