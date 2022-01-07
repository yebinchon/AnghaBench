
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int count; } ;
struct TYPE_6__ {int num_strings; char** strings; } ;
typedef TYPE_1__ STRING_VEC_T ;
typedef TYPE_2__ STATE_T ;
typedef int DTBLOB_T ;


 int DTOVERLAY_PADDING (int) ;
 int apply_overlay (char const*,char const*) ;
 scalar_t__ dry_run ;
 int dtoverlay_apply_override (int *,char const*,char const*,int,char const*) ;
 int * dtoverlay_create_dtb (int) ;
 int dtoverlay_create_prop_fragment (int *,int,int,char const*,void const*,int) ;
 int dtoverlay_delete_node (int *,char*,int ) ;
 int dtoverlay_dtb_set_trailer (int *,char*,int) ;
 char* dtoverlay_find_override (int *,char const*,int*) ;
 int dtoverlay_find_phandle (int *,int) ;
 int dtoverlay_free_dtb (int *) ;
 void* dtoverlay_get_property (int *,int,char const*,int*) ;
 int * dtoverlay_load_dtb (char const*,int ) ;
 int dtoverlay_pack_dtb (int *) ;
 int dtoverlay_save_dtb (int *,char const*) ;
 int dtparam_apply (int *,char const*,char const*,int,char const*,TYPE_1__*) ;
 int error (char*,...) ;
 char* error_file ;
 int free_string (char*) ;
 int overlay_src_dir ;
 int rename (char const*,char*) ;
 scalar_t__ run_cmd (char*,char const*) ;
 void* sprintf_dup (char*,...) ;
 int sscanf (char const*,char*,int*) ;
 char* strchr (char const*,char) ;
 scalar_t__ strcmp (char const*,char*) ;
 int string_vec_init (TYPE_1__*) ;
 int strlen (char const*) ;
 char* strrchr (char const*,char) ;
 int work_dir ;

__attribute__((used)) static int dtoverlay_add(STATE_T *state, const char *overlay,
    int argc, const char **argv)
{
    const char *overlay_name;
    const char *overlay_file;
    char *param_string = ((void*)0);
    int is_dtparam;
    DTBLOB_T *base_dtb = ((void*)0);
    DTBLOB_T *overlay_dtb;
    STRING_VEC_T used_props;
    int err;
    int len;
    int i;

    len = strlen(overlay) - 5;
    is_dtparam = (strcmp(overlay, "dtparam") == 0);
    if (is_dtparam)
    {

 overlay_file = sprintf_dup("%s/%s", work_dir, "base.dtb");
 if (run_cmd("dtc -I fs -O dtb -o '%s' /proc/device-tree 1>/dev/null 2>&1",
      overlay_file) != 0)
           return error("Failed to read active DTB");
    }
    else if ((len > 0) && (strcmp(overlay + len, ".dtbo") == 0))
    {
 const char *p;
 overlay_file = overlay;
 p = strrchr(overlay, '/');
 if (p)
 {
     overlay = p + 1;
     len = strlen(overlay) - 5;
 }

 overlay = sprintf_dup("%.*s", len, overlay);
    }
    else
    {
 overlay_file = sprintf_dup("%s/%s.dtbo", overlay_src_dir, overlay);
    }

    if (dry_run)
        overlay_name = "dry_run";
    else
 overlay_name = sprintf_dup("%d_%s", state->count, overlay);
    overlay_dtb = dtoverlay_load_dtb(overlay_file, DTOVERLAY_PADDING(4096));
    if (!overlay_dtb)
 return error("Failed to read '%s'", overlay_file);

    if (is_dtparam)
    {
        base_dtb = overlay_dtb;
 string_vec_init(&used_props);
    }


    for (i = 0; i < argc; i++)
    {
 const char *arg = argv[i];
 const char *param_val = strchr(arg, '=');
 const char *param, *override;
 char *p = ((void*)0);
 int override_len;
 if (param_val)
 {
     int len = (param_val - arg);
     p = sprintf_dup("%.*s", len, arg);
     param = p;
     param_val++;
 }
 else
 {

     param = arg;
     param_val = "true";
 }

 override = dtoverlay_find_override(overlay_dtb, param, &override_len);

 if (!override)
     return error("Unknown parameter '%s'", param);

 if (is_dtparam)
     err = dtparam_apply(overlay_dtb, param,
    override, override_len,
    param_val, &used_props);
 else
     err = dtoverlay_apply_override(overlay_dtb, param,
        override, override_len,
        param_val);
 if (err != 0)
     return error("Failed to set %s=%s", param, param_val);

 param_string = sprintf_dup("%s %s=%s",
       param_string ? param_string : "",
       param, param_val);

 free_string(p);
    }

    if (is_dtparam)
    {

        overlay_dtb = dtoverlay_create_dtb(2048 + 256 * used_props.num_strings);

        for (i = 0; i < used_props.num_strings; i++)
        {
            int phandle, node_off, prop_len;
            const char *str, *prop_name;
            const void *prop_data;

            str = used_props.strings[i];
            sscanf(str, "%8x", &phandle);
            prop_name = str + 8;
            node_off = dtoverlay_find_phandle(base_dtb, phandle);

            prop_data = dtoverlay_get_property(base_dtb, node_off,
                                               prop_name, &prop_len);
            err = dtoverlay_create_prop_fragment(overlay_dtb, i, phandle,
                                   prop_name, prop_data, prop_len);
        }

        dtoverlay_free_dtb(base_dtb);
    }







    dtoverlay_delete_node(overlay_dtb, "/__symbols__", 0);

    if (param_string)
 dtoverlay_dtb_set_trailer(overlay_dtb, param_string,
      strlen(param_string) + 1);


    overlay_file = sprintf_dup("%s/%s.dtbo", work_dir, overlay_name);


    dtoverlay_pack_dtb(overlay_dtb);
    dtoverlay_save_dtb(overlay_dtb, overlay_file);
    dtoverlay_free_dtb(overlay_dtb);

    if (!dry_run && !apply_overlay(overlay_file, overlay_name))
    {
 if (error_file)
 {
     rename(overlay_file, error_file);
     free_string(error_file);
 }
 return 1;
    }

    return 0;
}
