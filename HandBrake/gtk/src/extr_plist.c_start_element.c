
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * key; int * plist; int stack; int tag_stack; scalar_t__ closed_top; } ;
typedef TYPE_1__ parse_data_t ;
typedef int * gpointer ;
typedef size_t gint ;
typedef int gchar ;
struct TYPE_4__ {size_t id; int tag; } ;
typedef int GhbValue ;
typedef scalar_t__ GhbType ;
typedef int GMarkupParseContext ;
typedef int GError ;


 scalar_t__ GHB_ARRAY ;
 scalar_t__ GHB_DICT ;
 size_t TAG_MAP_SZ ;
 int g_error (char*) ;
 int g_free (int *) ;
 int * g_queue_peek_head (int ) ;
 int g_queue_push_head (int ,int *) ;
 int g_warning (char*,...) ;
 int ghb_array_append (int *,int *) ;
 int * ghb_array_new () ;
 int * ghb_dict_new () ;
 int ghb_dict_set (int *,int *,int *) ;
 int ghb_value_free (int **) ;
 scalar_t__ ghb_value_type (int *) ;
 scalar_t__ strcmp (int const*,int ) ;
 TYPE_2__* tag_map ;

__attribute__((used)) static void
start_element(
    GMarkupParseContext *ctx,
    const gchar *name,
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



    if (pd->closed_top)
        return;

    for (ii = 0; ii < TAG_MAP_SZ; ii++)
    {
        if (strcmp(name, tag_map[ii].tag) == 0)
        {
            id.id = tag_map[ii].id;
            break;
        }
    }
    if (ii == TAG_MAP_SZ)
    {
        g_warning("Unrecognized start tag (%s)", name);
        return;
    }
    g_queue_push_head(pd->tag_stack, id.pid);
    GhbType gtype = 0;
    GhbValue *gval = ((void*)0);
    GhbValue *current = g_queue_peek_head(pd->stack);
    switch (id.id)
    {
        case 131:
        {
        } break;
        case 132:
        {
            if (pd->key) g_free(pd->key);
            pd->key = ((void*)0);
        } break;
        case 135:
        {
            gval = ghb_dict_new();
            g_queue_push_head(pd->stack, gval);
        } break;
        case 138:
        {
            gval = ghb_array_new();
            g_queue_push_head(pd->stack, gval);
        } break;
        case 133:
        {
        } break;
        case 130:
        {
        } break;
        case 129:
        {
        } break;
        case 136:
        {
        } break;
        case 128:
        {
        } break;
        case 134:
        {
        } break;
        case 137:
        {
        } break;
    }

    if (gval)
    {
        if (current == ((void*)0))
        {
            pd->plist = gval;
            return;
        }
        gtype = ghb_value_type(current);
        if (gtype == GHB_ARRAY)
        {
            ghb_array_append(current, gval);
        }
        else if (gtype == GHB_DICT)
        {
            if (pd->key == ((void*)0))
            {
                g_warning("No key for dictionary item");
                ghb_value_free(&gval);
            }
            else
            {
                ghb_dict_set(current, pd->key, gval);
            }
        }
        else
        {
            g_error("Invalid container type. This shouldn't happen");
        }
    }
}
