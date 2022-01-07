
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;
typedef int format ;


 int fill_pathname_join_concat_noext (char*,char const*,char*,char const*,size_t) ;
 int fill_pathname_noext (char*,char const*,char*,size_t) ;
 struct tm* localtime (int *) ;
 int strftime (char*,int,char*,struct tm const*) ;
 scalar_t__ string_is_empty (char const*) ;
 int time (int *) ;

void fill_str_dated_filename(char *out_filename,
      const char *in_str, const char *ext, size_t size)
{
   char format[256];
   time_t cur_time = time(((void*)0));
   const struct tm* tm_ = localtime(&cur_time);

   format[0] = '\0';

   if (string_is_empty(ext))
   {
      strftime(format, sizeof(format), "-%y%m%d-%H%M%S", tm_);
      fill_pathname_noext(out_filename, in_str, format, size);
   }
   else
   {
      strftime(format, sizeof(format), "-%y%m%d-%H%M%S.", tm_);

      fill_pathname_join_concat_noext(out_filename,
            in_str, format, ext,
            size);
   }
}
