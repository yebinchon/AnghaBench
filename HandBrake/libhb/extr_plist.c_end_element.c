
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int xmlChar ;
typedef int uint64_t ;
struct TYPE_3__ {int closed_top; char* value; int stack; int * key; int * plist; int tag_stack; } ;
typedef TYPE_1__ parse_data_t ;
typedef scalar_t__ hb_value_type_t ;
typedef int hb_value_t ;
struct TYPE_4__ {int id; int tag; } ;


 scalar_t__ HB_VALUE_TYPE_ARRAY ;
 scalar_t__ HB_VALUE_TYPE_DICT ;
 int TAG_MAP_SZ ;
 int free (int *) ;
 int hb_dict_set (int *,int *,int *) ;
 int hb_error (char*,...) ;
 int hb_value_array_append (int *,int *) ;
 int * hb_value_bool (int) ;
 int * hb_value_double (double) ;
 int hb_value_free (int **) ;
 int * hb_value_int (int ) ;
 int * hb_value_string (char const*) ;
 scalar_t__ hb_value_type (int *) ;
 scalar_t__ queue_is_empty (int ) ;
 int * queue_peek_head (int ) ;
 void* queue_pop_head (int ) ;
 scalar_t__ strcmp (char*,int ) ;
 int * strdup (char const*) ;
 double strtod (char const*,int *) ;
 int strtoll (char const*,int *,int ) ;
 TYPE_2__* tag_map ;

__attribute__((used)) static void
end_element(
    void *ud,
    const xmlChar *xname)
{
    char *name = (char*)xname;
    parse_data_t *pd = (parse_data_t*)ud;
    int id;
    union
    {
        int id;
        void * pid;
    } start_id;
    int ii;



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
        hb_error("Unrecognized start tag (%s)", name);
        return;
    }
    start_id.pid = queue_pop_head(pd->tag_stack);
    if (start_id.id != id)
        hb_error("start tag != end tag: (%s %d) %d", name, id, id);

    hb_value_t *gval = ((void*)0);
    hb_value_t *current = queue_peek_head(pd->stack);
    hb_value_type_t gtype = 0;
    const char *value;
    if (pd->value != ((void*)0))
        value = pd->value;
    else
        value = "";
    switch (id)
    {
        case 131:
        {
        } break;
        case 132:
        {
            if (pd->key) free(pd->key);
            pd->key = strdup(value);
            return;
        } break;
        case 135:
        {
            queue_pop_head(pd->stack);
        } break;
        case 136:
        {
            queue_pop_head(pd->stack);
        } break;
        case 133:
        {
            uint64_t val = strtoll(value, ((void*)0), 0);
            gval = hb_value_int(val);
        } break;
        case 130:
        {
            double val = strtod(value, ((void*)0));
            gval = hb_value_double(val);
        } break;
        case 129:
        {
            gval = hb_value_string(value);
        } break;
        case 128:
        {
            gval = hb_value_bool(1);
        } break;
        case 134:
        {
            gval = hb_value_bool(0);
        } break;
        default:
        {
            hb_error("Unhandled plist type %d", id);
        } break;
    }
    if (gval)
    {


        if (current == ((void*)0))
        {
            pd->plist = gval;
            pd->closed_top = 1;
            return;
        }
        gtype = hb_value_type(current);
        if (gtype == HB_VALUE_TYPE_ARRAY)
        {
            hb_value_array_append(current, gval);
        }
        else if (gtype == HB_VALUE_TYPE_DICT)
        {
            if (pd->key == ((void*)0))
            {
                hb_error("No key for dictionary item");
                hb_value_free(&gval);
            }
            else
            {
                hb_dict_set(current, pd->key, gval);
            }
        }
        else
        {
            hb_error("Invalid container type. This shouldn't happen");
        }
    }
    if (queue_is_empty(pd->stack))
        pd->closed_top = 1;
}
