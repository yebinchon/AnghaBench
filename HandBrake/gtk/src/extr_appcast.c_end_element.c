
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int item; int tag_stack; } ;
typedef TYPE_1__ parse_data_t ;
typedef scalar_t__ gpointer ;
typedef size_t gint ;
typedef int gchar ;
struct TYPE_4__ {size_t id; int tag; } ;
typedef int GMarkupParseContext ;
typedef int GError ;



 size_t A_NONE ;
 int FALSE ;
 size_t TAG_MAP_SZ ;
 int g_debug (char*,int const*) ;
 scalar_t__ g_queue_pop_head (int ) ;
 int g_warning (char*,int const*,size_t,size_t) ;
 scalar_t__ strcmp (int const*,int ) ;
 TYPE_2__* tag_map ;

__attribute__((used)) static void
end_element(
    GMarkupParseContext *ctx,
    const gchar *tag,
    gpointer ud,
    GError **error)
{
    parse_data_t *pd = (parse_data_t*)ud;
    gint id;
    union
    {
        gint id;
        gpointer pid;
    } start_id;
    gint ii;

    for (ii = 0; ii < TAG_MAP_SZ; ii++)
    {
        if (strcmp(tag, tag_map[ii].tag) == 0)
        {
            id = tag_map[ii].id;
            break;
        }
    }
    if (ii == TAG_MAP_SZ)
    {
        g_debug("Unrecognized end tag (%s)", tag);
        id = A_NONE;
    }
    start_id.pid = g_queue_pop_head(pd->tag_stack);
    if (start_id.id != id)
        g_warning("start tag != end tag: (%s %d) %d", tag, start_id.id, id);
    switch (id)
    {
        case 128:
        {
            pd->item = FALSE;
        } break;
        default:
        {
        } break;
    }

}
