
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void backslash_to_slash( char *s )
{
   while ( *s != '\0' )
   {
       if ( *s == '\\' )
       {
           *s = '/';
       }
       s++;
   }
}
