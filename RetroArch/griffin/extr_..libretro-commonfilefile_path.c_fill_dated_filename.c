
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;


 struct tm* localtime (int *) ;
 int strftime (char*,size_t,char*,struct tm const*) ;
 size_t strlcat (char*,char const*,size_t) ;
 int time (int *) ;

size_t fill_dated_filename(char *out_filename,
      const char *ext, size_t size)
{
   time_t cur_time = time(((void*)0));
   const struct tm* tm_ = localtime(&cur_time);

   strftime(out_filename, size,
         "RetroArch-%m%d-%H%M%S", tm_);
   return strlcat(out_filename, ext, size);
}
