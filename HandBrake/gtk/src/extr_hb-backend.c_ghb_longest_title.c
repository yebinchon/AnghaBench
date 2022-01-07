
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_5__ {scalar_t__ index; scalar_t__ duration; } ;
typedef TYPE_1__ hb_title_t ;
struct TYPE_6__ {scalar_t__ feature; int list_title; } ;
typedef TYPE_2__ hb_title_set_t ;
typedef int gint ;


 int g_debug (char*) ;
 int * h_scan ;
 TYPE_2__* hb_get_title_set (int *) ;
 int hb_list_count (int ) ;
 TYPE_1__* hb_list_item (int ,int) ;

gint
ghb_longest_title()
{
    hb_title_set_t * title_set;
    const hb_title_t * title;
    gint count = 0, ii, longest = -1;
    int64_t duration = 0;

    g_debug("ghb_longest_title ()\n");
    if (h_scan == ((void*)0)) return 0;
    title_set = hb_get_title_set( h_scan );
    count = hb_list_count( title_set->list_title );
    if (count < 1) return -1;



    for (ii = 0; ii < count; ii++)
    {
        title = hb_list_item(title_set->list_title, ii);
        if (title->index == title_set->feature)
            return title_set->feature;
        if (title->duration > duration)
            longest = title->index;
    }
    return longest;
}
