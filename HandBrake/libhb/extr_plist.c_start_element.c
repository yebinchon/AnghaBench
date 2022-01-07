
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int xmlChar ;
struct TYPE_3__ {void* plist; int * key; int stack; int tag_stack; int * value; scalar_t__ closed_top; } ;
typedef TYPE_1__ parse_data_t ;
typedef scalar_t__ hb_value_type_t ;
typedef void hb_value_t ;
struct TYPE_4__ {int id; int tag; } ;


 scalar_t__ HB_VALUE_TYPE_ARRAY ;
 scalar_t__ HB_VALUE_TYPE_DICT ;
 int TAG_MAP_SZ ;
 int free (int *) ;
 void* hb_dict_init () ;
 int hb_dict_set (void*,int *,void*) ;
 int hb_error (char*,...) ;
 int hb_value_array_append (void*,void*) ;
 void* hb_value_array_init () ;
 int hb_value_free (void**) ;
 scalar_t__ hb_value_type (void*) ;
 void* queue_peek_head (int ) ;
 int queue_push_head (int ,void*) ;
 scalar_t__ strcmp (char*,int ) ;
 TYPE_2__* tag_map ;

__attribute__((used)) static void
start_element(
    void *ud,
    const xmlChar *xname,
    const xmlChar **attr_names)
{
    char *name = (char*)xname;
    parse_data_t *pd = (parse_data_t*)ud;
    union
    {
        int id;
        void * pid;
    } id;
    int ii;



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
        hb_error("Unrecognized start tag (%s)", name);
        return;
    }
    if (pd->value)
    {
        free(pd->value);
        pd->value = ((void*)0);
    }
    queue_push_head(pd->tag_stack, id.pid);
    hb_value_type_t gtype = 0;
    hb_value_t *gval = ((void*)0);
    hb_value_t *current = queue_peek_head(pd->stack);
    switch (id.id)
    {
        case 131:
        {
        } break;
        case 132:
        {
            if (pd->key) free(pd->key);
            pd->key = ((void*)0);
        } break;
        case 135:
        {
            gval = hb_dict_init();
            queue_push_head(pd->stack, gval);
        } break;
        case 138:
        {
            gval = hb_value_array_init();
            queue_push_head(pd->stack, gval);
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
}
