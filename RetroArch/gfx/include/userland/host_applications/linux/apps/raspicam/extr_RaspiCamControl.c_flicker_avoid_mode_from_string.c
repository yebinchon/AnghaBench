
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MMAL_PARAM_FLICKERAVOID_T ;


 int MMAL_PARAM_FLICKERAVOID_OFF ;
 int flicker_avoid_map ;
 int flicker_avoid_map_size ;
 int raspicli_map_xref (char const*,int ,int ) ;
 int vcos_log_error (char*,char const*) ;

__attribute__((used)) static MMAL_PARAM_FLICKERAVOID_T flicker_avoid_mode_from_string(const char *str)
{
   int i = raspicli_map_xref(str, flicker_avoid_map, flicker_avoid_map_size);

   if( i != -1)
      return (MMAL_PARAM_FLICKERAVOID_T)i;

   vcos_log_error("Unknown flicker avoid mode: %s", str);
   return MMAL_PARAM_FLICKERAVOID_OFF;
}
