
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* version; void* build; int item; int tag_stack; } ;
typedef TYPE_1__ parse_data_t ;
typedef scalar_t__ gpointer ;
typedef size_t gint ;
typedef int gchar ;
struct TYPE_4__ {size_t id; int tag; } ;
typedef int GMarkupParseContext ;
typedef int GError ;




 size_t A_NONE ;
 size_t TAG_MAP_SZ ;
 int TRUE ;
 int g_debug (char*,int const*) ;
 int g_queue_push_head (int ,scalar_t__) ;
 void* g_strdup (int const*) ;
 int * lookup_attr_value (char*,int const**,int const**) ;
 scalar_t__ strcmp (int const*,int ) ;
 TYPE_2__* tag_map ;

__attribute__((used)) static void
start_element(
    GMarkupParseContext *ctx,
    const gchar *tag,
    const gchar **attr_names,
    const gchar **attr_values,
    gpointer ud,
    GError **error)
{
    parse_data_t *pd = (parse_data_t*)ud;
    union
    {
        gint id;
        gpointer pid;
    } id;
    gint ii;

    for (ii = 0; ii < TAG_MAP_SZ; ii++)
    {
        if (strcmp(tag, tag_map[ii].tag) == 0)
        {
            id.id = tag_map[ii].id;
            break;
        }
    }
    if (ii == TAG_MAP_SZ)
    {
        g_debug("Unrecognized start tag (%s)", tag);
        id.id = A_NONE;
    }
    g_queue_push_head(pd->tag_stack, id.pid);
    switch (id.id)
    {
        case 128:
        {
            pd->item = TRUE;
        } break;
        case 129:
        {
            const gchar *build, *version;
            build = lookup_attr_value(
                        "sparkle:version", attr_names, attr_values);
            version = lookup_attr_value(
                        "sparkle:shortVersionString", attr_names, attr_values);
            if (build)
                pd->build = g_strdup(build);
            if (version)
                pd->version = g_strdup(version);
        } break;
    }
}
