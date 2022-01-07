
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dtparam_state {int used_props; scalar_t__ override_value; } ;
typedef int prop_id ;
typedef int DTBLOB_T ;


 int FDT_ERR_INTERNAL ;
 int dtoverlay_override_one_target (int,int *,int,char const*,int,int,int,void*) ;
 scalar_t__ snprintf (char*,int,char*,int,char const*) ;
 int string_vec_add (int ,char*,int ) ;
 scalar_t__ string_vec_find (int ,char*,int ) ;

int dtparam_callback(int override_type,
       DTBLOB_T *dtb, int node_off,
       const char *prop_name, int target_phandle,
       int target_off, int target_size,
       void *callback_value)
{
    struct dtparam_state *state = callback_value;
    char prop_id[80];
    int err;

    err = dtoverlay_override_one_target(override_type,
     dtb, node_off,
     prop_name, target_phandle,
     target_off, target_size,
     (void *)state->override_value);

    if ((err == 0) && (target_phandle != 0))
    {
 if (snprintf(prop_id, sizeof(prop_id), "%08x%s", target_phandle,
       prop_name) < 0)
     err = FDT_ERR_INTERNAL;
 else if (string_vec_find(state->used_props, prop_id, 0) < 0)
     string_vec_add(state->used_props, prop_id, 0);
    }

    return err;
}
