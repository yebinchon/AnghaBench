
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MMAL_PARAMETER_DRC_STRENGTH_T ;


 int MMAL_PARAMETER_DRC_STRENGTH_OFF ;
 int drc_mode_map ;
 int drc_mode_map_size ;
 int raspicli_map_xref (char const*,int ,int ) ;
 int vcos_log_error (char*,char const*) ;

__attribute__((used)) static MMAL_PARAMETER_DRC_STRENGTH_T drc_mode_from_string(const char *str)
{
   int i = raspicli_map_xref(str, drc_mode_map, drc_mode_map_size);

   if( i != -1)
      return (MMAL_PARAMETER_DRC_STRENGTH_T)i;

   vcos_log_error("Unknown DRC level: %s", str);
   return MMAL_PARAMETER_DRC_STRENGTH_OFF;
}
