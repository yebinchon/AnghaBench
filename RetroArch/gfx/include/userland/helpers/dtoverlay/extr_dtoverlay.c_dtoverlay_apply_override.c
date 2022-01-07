
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DTBLOB_T ;


 int dtoverlay_foreach_override_target (int *,char const*,char const*,int,int ,void*) ;
 int dtoverlay_override_one_target ;

int dtoverlay_apply_override(DTBLOB_T *dtb, const char *override_name,
                             const char *override_data, int data_len,
                             const char *override_value)
{
   return dtoverlay_foreach_override_target(dtb, override_name,
         override_data, data_len,
         dtoverlay_override_one_target,
         (void *)override_value);
}
