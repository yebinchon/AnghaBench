
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int dummy; } ;
typedef int runtime_log_t ;


 int LC_TIME ;
 int free (char*) ;
 char* local_to_utf8_string_alloc (char*) ;
 int runtime_log_get_last_played_time (int *,struct tm*) ;
 int setlocale (int ,char*) ;
 int strftime (char*,size_t,char const*,struct tm*) ;
 int string_is_empty (char*) ;
 int strlcpy (char*,char*,size_t) ;

__attribute__((used)) static void last_played_strftime(runtime_log_t *runtime_log, char *str, size_t len, const char *format)
{
   struct tm time_info;
   char *local = ((void*)0);

   if (!runtime_log)
      return;


   runtime_log_get_last_played_time(runtime_log, &time_info);


   setlocale(LC_TIME, "");



   strftime(str, len, format, &time_info);
}
