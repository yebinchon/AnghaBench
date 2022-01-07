
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int id_string ;


 int PAHW_MCD ;
 int PAHW_SMS ;
 int PicoAHW ;
 scalar_t__ extract_text (char*,scalar_t__,int,int) ;
 int fname_ext (char*,int,int *,int *,char const*) ;
 scalar_t__ media_id_header ;
 int strcpy (char*,char*) ;

__attribute__((used)) static char *emu_make_rom_id(const char *fname)
{
 static char id_string[3+0xe*3+0x3*3+0x30*3+3];
 int pos, swab = 1;

 if (PicoAHW & PAHW_MCD) {
  strcpy(id_string, "CD|");
  swab = 0;
 }
 else if (PicoAHW & PAHW_SMS)
  strcpy(id_string, "MS|");
 else strcpy(id_string, "MD|");
 pos = 3;

 if (!(PicoAHW & PAHW_SMS)) {
  pos += extract_text(id_string + pos, media_id_header + 0x80, 0x0e, swab);
  id_string[pos] = '|'; pos++;
  pos += extract_text(id_string + pos, media_id_header + 0xf0, 0x03, swab);
  id_string[pos] = '|'; pos++;
  pos += extract_text(id_string + pos, media_id_header + 0x50, 0x30, swab);
  id_string[pos] = 0;
  if (pos > 5)
   return id_string;
  pos = 3;
 }


 fname_ext(id_string + 3, sizeof(id_string) - 3, ((void*)0), ((void*)0), fname);

 return id_string;
}
