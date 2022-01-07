
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int hb_value_t ;
struct TYPE_4__ {scalar_t__ depth; } ;
typedef TYPE_1__ hb_preset_index_t ;


 scalar_t__ HB_VALUE_TYPE_ARRAY ;
 scalar_t__ HB_VALUE_TYPE_DICT ;
 int free (TYPE_1__*) ;
 int * hb_presets ;
 int hb_presets_clear_default () ;
 int hb_value_array_append (int *,int ) ;
 int * hb_value_array_get (int *,int) ;
 int hb_value_array_len (int *) ;
 int hb_value_dup (int *) ;
 int hb_value_free (int **) ;
 scalar_t__ hb_value_type (int *) ;
 TYPE_1__* lookup_default_index (int *) ;

__attribute__((used)) static int hb_presets_add_internal(hb_value_t *preset)
{
    hb_preset_index_t *path;
    int added = 0;

    if (preset == ((void*)0))
        return -1;

    path = lookup_default_index(preset);
    if (path != ((void*)0) && path->depth != 0)
    {


        hb_presets_clear_default();
    }
    free(path);

    int index = hb_value_array_len(hb_presets);
    if (hb_value_type(preset) == HB_VALUE_TYPE_DICT)
    {

        hb_value_array_append(hb_presets, hb_value_dup(preset));
        added++;
    }
    else if (hb_value_type(preset) == HB_VALUE_TYPE_ARRAY)
    {

        int count = hb_value_array_len(preset);
        int ii;
        for (ii = 0; ii < count; ii++)
        {
            hb_value_t *value = hb_value_array_get(preset, ii);
            hb_value_array_append(hb_presets, hb_value_dup(value));
            added++;
        }
    }

    hb_value_free(&preset);
    if (added == 0)
    {
        return -1;
    }

    return index;
}
