
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {void* port; void* host; void* userinfo; } ;
typedef TYPE_1__ VC_URI_PARTS_T ;


 void* create_unescaped_string (char const*,int) ;
 int to_lower_string (void*) ;

__attribute__((used)) static bool parse_authority( VC_URI_PARTS_T *p_uri, const char *str,
      uint32_t str_len, const char *userinfo_end )
{
   const char *marker = userinfo_end;
   const char *str_end = str + str_len;
   char c;

   if (marker)
   {
      p_uri->userinfo = create_unescaped_string(str, marker - str);
      if (!p_uri->userinfo)
         return 0;
      str = marker + 1;
   }

   if (*str == '[')
   {

      for (marker = str; marker < str_end; marker++)
      {
         c = *marker;
         if (c == ']')
            break;
      }

      if (marker < str_end)
         marker++;
   } else {

      for (marker = str; marker < str_end; marker++)
      {
         c = *marker;
         if (c == ':')
            break;
      }
   }


   p_uri->host = create_unescaped_string(str, marker - str);
   if (!p_uri->host)
      return 0;
   to_lower_string(p_uri->host);

   if (*marker == ':')
   {
      str = marker + 1;
      p_uri->port = create_unescaped_string(str, str_end - str);
      if (!p_uri->port)
         return 0;
   }

   return 1;
}
