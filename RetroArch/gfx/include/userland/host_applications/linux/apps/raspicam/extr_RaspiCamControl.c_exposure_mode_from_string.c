
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MMAL_PARAM_EXPOSUREMODE_T ;


 int MMAL_PARAM_EXPOSUREMODE_AUTO ;
 int exposure_map ;
 int exposure_map_size ;
 int raspicli_map_xref (char const*,int ,int ) ;
 int vcos_log_error (char*,char const*) ;

__attribute__((used)) static MMAL_PARAM_EXPOSUREMODE_T exposure_mode_from_string(const char *str)
{
   int i = raspicli_map_xref(str, exposure_map, exposure_map_size);

   if( i != -1)
      return (MMAL_PARAM_EXPOSUREMODE_T)i;

   vcos_log_error("Unknown exposure mode: %s", str);
   return MMAL_PARAM_EXPOSUREMODE_AUTO;
}
