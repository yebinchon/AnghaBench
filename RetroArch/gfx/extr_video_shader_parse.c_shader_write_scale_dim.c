
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int key ;
typedef enum gfx_scale_type { ____Placeholder_gfx_scale_type } gfx_scale_type ;
typedef int config_file_t ;


 int RARCH_SCALE_ABSOLUTE ;
 int config_set_float (int *,char*,float) ;
 int config_set_int (int *,char*,unsigned int) ;
 int config_set_string (int *,char*,int ) ;
 int scale_type_to_str (int) ;
 int snprintf (char*,int,char*,char const*,unsigned int) ;

__attribute__((used)) static void shader_write_scale_dim(config_file_t *conf,
      const char *dim,
      enum gfx_scale_type type, float scale,
      unsigned absolute, unsigned i)
{
   char key[64];

   key[0] = '\0';

   snprintf(key, sizeof(key), "scale_type_%s%u", dim, i);
   config_set_string(conf, key, scale_type_to_str(type));

   snprintf(key, sizeof(key), "scale_%s%u", dim, i);
   if (type == RARCH_SCALE_ABSOLUTE)
      config_set_int(conf, key, absolute);
   else
      config_set_float(conf, key, scale);
}
