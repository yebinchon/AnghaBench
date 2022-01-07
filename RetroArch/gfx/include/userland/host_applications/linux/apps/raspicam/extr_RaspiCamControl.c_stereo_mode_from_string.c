
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MMAL_STEREOSCOPIC_MODE_T ;


 int MMAL_STEREOSCOPIC_MODE_NONE ;
 int raspicli_map_xref (char const*,int ,int ) ;
 int stereo_mode_map ;
 int stereo_mode_map_size ;
 int vcos_log_error (char*,char const*) ;

__attribute__((used)) static MMAL_STEREOSCOPIC_MODE_T stereo_mode_from_string(const char *str)
{
   int i = raspicli_map_xref(str, stereo_mode_map, stereo_mode_map_size);

   if( i != -1)
      return (MMAL_STEREOSCOPIC_MODE_T)i;

   vcos_log_error("Unknown metering mode: %s", str);
   return MMAL_STEREOSCOPIC_MODE_NONE;
}
