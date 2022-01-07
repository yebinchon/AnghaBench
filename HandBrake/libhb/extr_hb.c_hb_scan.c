
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_12__ {int index; int preview_count; } ;
typedef TYPE_2__ hb_title_t ;
struct TYPE_14__ {int * path; int list_title; } ;
struct TYPE_11__ {int state; } ;
struct TYPE_13__ {TYPE_6__ title_set; scalar_t__ scan_die; int scan_thread; int state_lock; TYPE_1__ state; } ;
typedef TYPE_3__ hb_handle_t ;


 int HB_STATE_SCANDONE ;
 int free (char*) ;
 int hb_get_cpu_count () ;
 char* hb_get_cpu_name () ;
 char* hb_get_cpu_platform_name () ;
 int hb_list_count (int ) ;
 TYPE_2__* hb_list_item (int ,int) ;
 int hb_list_rem (int ,TYPE_2__*) ;
 int hb_lock (int ) ;
 int hb_log (char*,char const*,...) ;
 int hb_qsv_info_print () ;
 int hb_remove_previews (TYPE_3__*) ;
 int hb_scan_init (TYPE_3__*,scalar_t__*,char const*,int,TYPE_6__*,int,int,int ) ;
 int hb_title_close (TYPE_2__**) ;
 int hb_unlock (int ) ;
 int is_hardware_disabled () ;
 int strcmp (int *,char const*) ;

void hb_scan( hb_handle_t * h, const char * path, int title_index,
              int preview_count, int store_previews, uint64_t min_duration )
{
    hb_title_t * title;


    if (h->title_set.path != ((void*)0) && !strcmp(h->title_set.path, path))
    {


        int ii;
        for (ii = 0; ii < hb_list_count(h->title_set.list_title); ii++)
        {
            title = hb_list_item(h->title_set.list_title, ii);
            if (title->index == title_index)
            {




                if (preview_count < 0)
                {
                    preview_count = title->preview_count;
                }
                if (preview_count == title->preview_count)
                {

                    hb_lock( h->state_lock );
                    h->state.state = HB_STATE_SCANDONE;
                    hb_unlock( h->state_lock );
                    return;
                }
            }
        }
    }
    if (preview_count < 0)
    {
        preview_count = 10;
    }

    h->scan_die = 0;


    hb_remove_previews( h );
    while( ( title = hb_list_item( h->title_set.list_title, 0 ) ) )
    {
        hb_list_rem( h->title_set.list_title, title );
        hb_title_close( &title );
    }
    free((char*)h->title_set.path);
    h->title_set.path = ((void*)0);


    const char *cpu_name = hb_get_cpu_name();
    const char *cpu_type = hb_get_cpu_platform_name();
    hb_log("CPU: %s", cpu_name != ((void*)0) ? cpu_name : "");
    if (cpu_type != ((void*)0))
    {
        hb_log(" - %s", cpu_type);
    }
    hb_log(" - logical processor count: %d", hb_get_cpu_count());
    hb_log( "hb_scan: path=%s, title_index=%d", path, title_index );
    h->scan_thread = hb_scan_init( h, &h->scan_die, path, title_index,
                                   &h->title_set, preview_count,
                                   store_previews, min_duration );
}
