
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MMAL_PARAM_AWBMODE_T ;


 int MMAL_PARAM_AWBMODE_AUTO ;
 int awb_map ;
 int awb_map_size ;
 int raspicli_map_xref (char const*,int ,int ) ;
 int vcos_log_error (char*,char const*) ;

__attribute__((used)) static MMAL_PARAM_AWBMODE_T awb_mode_from_string(const char *str)
{
   int i = raspicli_map_xref(str, awb_map, awb_map_size);

   if( i != -1)
      return (MMAL_PARAM_AWBMODE_T)i;

   vcos_log_error("Unknown awb mode: %s", str);
   return MMAL_PARAM_AWBMODE_AUTO;
}
