
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int utf16_t ;
typedef int get_next_char_t ;


 scalar_t__ lb_get_next_char_utf16 ;
 int set_linebreaks (int const*,size_t,char const*,char*,int ) ;

void set_linebreaks_utf16(
  const utf16_t *s,
  size_t len,
  const char *lang,
  char *brks)
{
 set_linebreaks(s, len, lang, brks,
       (get_next_char_t)lb_get_next_char_utf16);
}
