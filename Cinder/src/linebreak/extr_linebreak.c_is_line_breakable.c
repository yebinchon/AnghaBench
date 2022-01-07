
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int utf32_t ;


 int set_linebreaks_utf32 (int *,int,char const*,char*) ;

int is_line_breakable(
  utf32_t char1,
  utf32_t char2,
  const char* lang)
{
 utf32_t s[2];
 char brks[2];
 s[0] = char1;
 s[1] = char2;
 set_linebreaks_utf32(s, 2, lang, brks);
 return brks[0];
}
