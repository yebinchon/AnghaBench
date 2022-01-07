
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VCOS_LOG_LEVEL_T ;
const char *vcos_log_level_to_string( VCOS_LOG_LEVEL_T level )
{
   switch (level)
   {
      case 129: return "uninit";
      case 131: return "never";
      case 133: return "error";
      case 128: return "warn";
      case 132: return "info";
      case 130: return "trace";
   }
   return "???";
}
