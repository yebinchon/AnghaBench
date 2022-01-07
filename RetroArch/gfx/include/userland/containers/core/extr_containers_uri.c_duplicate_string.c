
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 scalar_t__ malloc (size_t) ;
 int memcpy (char*,char const*,size_t) ;
 int strlen (char const*) ;

__attribute__((used)) static bool duplicate_string( const char *src, char **p_dst )
{
   if (*p_dst)
      free(*p_dst);

   if (src)
   {
      size_t str_size = strlen(src) + 1;

      *p_dst = (char *)malloc(str_size);
      if (!*p_dst)
         return 0;

      memcpy(*p_dst, src, str_size);
   } else
      *p_dst = ((void*)0);

   return 1;
}
