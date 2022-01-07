
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAHW_MCD ;
 int PicoAHW ;
 int extract_text (char*,scalar_t__,int,int) ;
 scalar_t__ media_id_header ;

void emu_get_game_name(char *str150)
{
 int ret, swab = (PicoAHW & PAHW_MCD) ? 0 : 1;
 char *s, *d;

 ret = extract_text(str150, media_id_header + 0x50, 0x30, swab);

 for (s = d = str150 + 1; s < str150+ret; s++)
 {
  if (*s == 0) break;
  if (*s != ' ' || d[-1] != ' ')
   *d++ = *s;
 }
 *d = 0;
}
