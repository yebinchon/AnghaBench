
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* closed_top; int stack; int * key; int * plist; int value; int tag_stack; } ;
typedef TYPE_1__ parse_data_t ;
typedef scalar_t__ gpointer ;
typedef void* gint64 ;
typedef size_t gint ;
typedef void* gdouble ;
typedef int gchar ;
struct TYPE_4__ {size_t id; int tag; } ;
typedef int GhbValue ;
typedef scalar_t__ GhbType ;
typedef int GMarkupParseContext ;
typedef int GError ;


 void* FALSE ;
 scalar_t__ GHB_ARRAY ;
 scalar_t__ GHB_DICT ;
 size_t TAG_MAP_SZ ;
 void* TRUE ;
 int g_error (char*) ;
 int g_free (int *) ;
 int g_message (char*,size_t) ;
 scalar_t__ g_queue_is_empty (int ) ;
 int * g_queue_peek_head (int ) ;
 scalar_t__ g_queue_pop_head (int ) ;
 int * g_strdup (int ) ;
 void* g_strtod (int ,int *) ;
 int g_warning (char*,...) ;
 int ghb_array_append (int *,int *) ;
 int * ghb_bool_value_new (void*) ;
 int ghb_dict_set (int *,int *,int *) ;
 int * ghb_double_value_new (void*) ;
 int * ghb_int_value_new (void*) ;
 int * ghb_string_value_new (int ) ;
 int ghb_value_free (int **) ;
 scalar_t__ ghb_value_type (int *) ;
 scalar_t__ strcmp (int const*,int ) ;
 TYPE_2__* tag_map ;

__attribute__((used)) static void
end_element(
    GMarkupParseContext *ctx,
    const gchar *name,
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



    if (pd->closed_top)
        return;

    for (ii = 0; ii < TAG_MAP_SZ; ii++)
    {
        if (strcmp(name, tag_map[ii].tag) == 0)
        {
            id = tag_map[ii].id;
            break;
        }
    }
    if (ii == TAG_MAP_SZ)
    {
        g_warning("Unrecognized start tag (%s)", name);
        return;
    }
    start_id.pid = g_queue_pop_head(pd->tag_stack);
    if (start_id.id != id)
        g_warning("start tag != end tag: (%s %d) %d", name, id, id);

    GhbValue *gval = ((void*)0);
    GhbValue *current = g_queue_peek_head(pd->stack);
    GhbType gtype = 0;
    switch (id)
    {
        case 131:
        {
        } break;
        case 132:
        {
            if (pd->key) g_free(pd->key);
            pd->key = g_strdup(pd->value);
            return;
        } break;
        case 135:
        {
            g_queue_pop_head(pd->stack);
        } break;
        case 136:
        {
            g_queue_pop_head(pd->stack);
        } break;
        case 133:
        {
            gint64 val = g_strtod(pd->value, ((void*)0));
            gval = ghb_int_value_new(val);
        } break;
        case 130:
        {
            gdouble val = g_strtod(pd->value, ((void*)0));
            gval = ghb_double_value_new(val);
        } break;
        case 129:
        {
            gval = ghb_string_value_new(pd->value);
        } break;
        case 128:
        {
            gval = ghb_bool_value_new(TRUE);
        } break;
        case 134:
        {
            gval = ghb_bool_value_new(FALSE);
        } break;
        default:
        {
            g_message("Unhandled plist type %d", id);
        } break;
    }
    if (gval)
    {


        if (current == ((void*)0))
        {
            pd->plist = gval;
            pd->closed_top = TRUE;
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
    if (g_queue_is_empty(pd->stack))
        pd->closed_top = TRUE;
}
