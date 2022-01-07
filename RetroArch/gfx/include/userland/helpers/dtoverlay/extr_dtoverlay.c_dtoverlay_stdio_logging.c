
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int dtoverlay_logging_type_t ;




 int fprintf (int ,char*,...) ;
 int stderr ;
 int vfprintf (int ,char const*,int ) ;

__attribute__((used)) static void dtoverlay_stdio_logging(dtoverlay_logging_type_t type,
                                    const char *fmt, va_list args)
{
   const char *type_str;

   switch (type)
   {
   case 128:
      type_str = "error";
      break;

   case 129:
      type_str = "debug";
      break;

   default:
      type_str = "?";
   }

   fprintf(stderr, "DTOVERLAY[%s]: ", type_str);
   vfprintf(stderr, fmt, args);
   fprintf(stderr, "\n");
}
