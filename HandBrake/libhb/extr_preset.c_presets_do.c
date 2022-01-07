
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int (* preset_do_f ) (int *,TYPE_2__*) ;
struct TYPE_6__ {int* index; int depth; } ;
struct TYPE_7__ {TYPE_1__ path; } ;
typedef TYPE_2__ preset_do_context_t ;
typedef int hb_value_t ;


 scalar_t__ HB_VALUE_TYPE_ARRAY ;
 scalar_t__ HB_VALUE_TYPE_DICT ;
 int PRESET_DO_DELETE ;
 int PRESET_DO_DONE ;
 int PRESET_DO_NEXT ;
 int PRESET_DO_SKIP ;
 int PRESET_DO_SUCCESS ;
 int * hb_dict_get (int *,char*) ;
 int hb_error (char*) ;
 int * hb_value_array_get (int *,int) ;
 int hb_value_array_len (int *) ;
 int hb_value_array_remove (int *,int) ;
 scalar_t__ hb_value_get_bool (int *) ;
 scalar_t__ hb_value_type (int *) ;

__attribute__((used)) static int presets_do(preset_do_f do_func, hb_value_t *preset,
                      preset_do_context_t *ctx)
{
    int result;
    hb_value_t *next;

    if (hb_value_type(preset) == HB_VALUE_TYPE_ARRAY)
    {

        int ii;

        for (ii = 0; ii < hb_value_array_len(preset); )
        {
            ctx->path.index[ctx->path.depth-1] = ii;
            next = hb_value_array_get(preset, ii);
            result = presets_do(do_func, next, ctx);
            if (result == PRESET_DO_DELETE)
            {
                hb_value_array_remove(preset, ii);
                continue;
            }
            ii++;
            if (result == PRESET_DO_SKIP)
                return PRESET_DO_NEXT;
            if (result != PRESET_DO_NEXT)
                return result;
        }
        return PRESET_DO_NEXT;
    }
    else if (hb_value_type(preset) == HB_VALUE_TYPE_DICT &&
             hb_dict_get(preset, "VersionMajor") != ((void*)0))
    {

        next = hb_dict_get(preset, "PresetList");
        return presets_do(do_func, next, ctx);
    }
    else if (hb_value_type(preset) == HB_VALUE_TYPE_DICT &&
             hb_value_get_bool(hb_dict_get(preset, "Folder")))
    {

        result = do_func(preset, ctx);
        if (result != PRESET_DO_NEXT)
            return result;


        ctx->path.depth++;
        next = hb_dict_get(preset, "ChildrenArray");
        result = presets_do(do_func, next, ctx);
        if (result == PRESET_DO_SUCCESS)
            return result;
        ctx->path.depth--;
        return result;
    }
    else if (hb_value_type(preset) == HB_VALUE_TYPE_DICT &&
             hb_dict_get(preset, "PresetName") != ((void*)0))
    {

        return do_func(preset, ctx);
    }
    else
    {
        hb_error("Error: invalid preset format in presets_do()");
        return PRESET_DO_DELETE;
    }
    return PRESET_DO_DONE;
}
