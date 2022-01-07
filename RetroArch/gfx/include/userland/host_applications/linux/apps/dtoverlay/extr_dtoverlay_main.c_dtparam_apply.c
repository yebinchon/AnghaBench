
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dtparam_state {char const* override_value; int * used_props; } ;
typedef int STRING_VEC_T ;
typedef int DTBLOB_T ;


 int FDT_ERR_NOSPACE ;
 int NON_FATAL (int ) ;
 int dtoverlay_error (char*) ;
 int dtoverlay_foreach_override_target (int *,char const*,void*,int,int ,void*) ;
 int dtparam_callback ;
 int free (void*) ;
 void* malloc (int) ;
 int memcpy (void*,char const*,int) ;

int dtparam_apply(DTBLOB_T *dtb, const char *override_name,
    const char *override_data, int data_len,
    const char *override_value, STRING_VEC_T *used_props)
{
    struct dtparam_state state;
    void *data;
    int err;

    state.used_props = used_props;
    state.override_value = override_value;


    data = malloc(data_len);
    if (data)
    {
 memcpy(data, override_data, data_len);
 err = dtoverlay_foreach_override_target(dtb, override_name,
      data, data_len,
      dtparam_callback,
      (void *)&state);
 free(data);
    }
    else
    {
 dtoverlay_error("out of memory");
 err = NON_FATAL(FDT_ERR_NOSPACE);
    }

    return err;
}
