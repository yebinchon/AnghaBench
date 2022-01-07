
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef scalar_t__ int64_t ;
typedef int RFILE ;


 scalar_t__ filestream_write (int *,char*,scalar_t__) ;
 scalar_t__ vsprintf (char*,char const*,int ) ;

int filestream_vprintf(RFILE *stream, const char* format, va_list args)
{
   static char buffer[8 * 1024];
   int64_t num_chars = vsprintf(buffer, format, args);

   if (num_chars < 0)
      return -1;
   else if (num_chars == 0)
      return 0;

   return (int)filestream_write(stream, buffer, num_chars);
}
