
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MMAL_PARAM_IMAGEFX_T ;


 int MMAL_PARAM_IMAGEFX_NONE ;
 int imagefx_map ;
 int imagefx_map_size ;
 int raspicli_map_xref (char const*,int ,int ) ;
 int vcos_log_error (char*,char const*) ;

MMAL_PARAM_IMAGEFX_T imagefx_mode_from_string(const char *str)
{
   int i = raspicli_map_xref(str, imagefx_map, imagefx_map_size);

   if( i != -1)
      return (MMAL_PARAM_IMAGEFX_T)i;

   vcos_log_error("Unknown image fx: %s", str);
   return MMAL_PARAM_IMAGEFX_NONE;
}
