
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MMAL_PARAM_EXPOSUREMETERINGMODE_T ;


 int MMAL_PARAM_EXPOSUREMETERINGMODE_AVERAGE ;
 int metering_mode_map ;
 int metering_mode_map_size ;
 int raspicli_map_xref (char const*,int ,int ) ;
 int vcos_log_error (char*,char const*) ;

__attribute__((used)) static MMAL_PARAM_EXPOSUREMETERINGMODE_T metering_mode_from_string(const char *str)
{
   int i = raspicli_map_xref(str, metering_mode_map, metering_mode_map_size);

   if( i != -1)
      return (MMAL_PARAM_EXPOSUREMETERINGMODE_T)i;

   vcos_log_error("Unknown metering mode: %s", str);
   return MMAL_PARAM_EXPOSUREMETERINGMODE_AVERAGE;
}
