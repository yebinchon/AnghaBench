
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int * _wgetenv (char*) ;
 int fill_pathname_join (char*,char const*,char*,size_t) ;
 int free (char*) ;
 char* getenv (char*) ;
 int strlcpy (char*,char const*,size_t) ;
 char* utf16_to_utf8_string_alloc (int const*) ;

bool fill_pathname_application_data(char *s, size_t len)
{
   const char *xdg = getenv("XDG_CONFIG_HOME");
   const char *appdata = getenv("HOME");



   if (xdg)
   {
      fill_pathname_join(s, xdg, "retroarch/", len);
      return 1;
   }

   if (appdata)
   {





      fill_pathname_join(s, appdata,
            ".config/retroarch/", len);

      return 1;
   }


   return 0;
}
