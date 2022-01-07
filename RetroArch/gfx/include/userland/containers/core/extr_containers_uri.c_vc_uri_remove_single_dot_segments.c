
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memmove (char*,char*,int ) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;

__attribute__((used)) static void vc_uri_remove_single_dot_segments( char *path_str )
{
   char *slash = path_str - 1;

   while (slash++)
   {
      if (*slash == '.')
      {
         switch (slash[1])
         {
         case '/':
            memmove(slash, slash + 2, strlen(slash + 2) + 1);
            break;
         case '\0':
            *slash = '\0';
            break;
         default:
            ;
         }
      }
      slash = strchr(slash, '/');
   }
}
