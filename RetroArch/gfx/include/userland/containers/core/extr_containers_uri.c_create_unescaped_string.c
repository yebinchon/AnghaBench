
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ malloc (scalar_t__) ;
 int unescape_string (char const*,int ,char*) ;
 scalar_t__ unescaped_length (char const*,int ) ;

__attribute__((used)) static char *create_unescaped_string( const char *escstr, uint32_t esclen )
{
   char *unescstr;

   unescstr = (char *)malloc(unescaped_length(escstr, esclen) + 1);
   if (unescstr)
      unescape_string(escstr, esclen, unescstr);

   return unescstr;
}
