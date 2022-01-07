
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ unset; } ;






 TYPE_1__* SYSROM_roms ;
 scalar_t__ strcmp (char const*,char const* const) ;

__attribute__((used)) static int MatchByName(char const *filename, int len, int only_if_not_set)
{
 static char const * const common_filenames[] = {
  "atariosa.rom", "atari_osa.rom", "atari_os_a.rom",
  "atariosb.rom", "atari_osb.rom", "atari_os_b.rom",
  ((void*)0),
  "atarixlxe.rom", "atarixl.rom", "atari_xlxe.rom", "atari_xl_xe.rom",
  ((void*)0),
  "atari5200.rom", "atar5200.rom", "5200.rom", "5200.bin", "atari_5200.rom",
  ((void*)0),
  "ataribasic.rom", "ataribas.rom", "basic.rom", "atari_basic.rom",
  ((void*)0)
 };
 static struct { int const len; int const id; int const offset; } const offsets[] = {
   { 0x2800, 130, 0 },
   { 0x4000, 128, 7 },
   { 0x800, 131, 12 },
   { 0x2000, 129, 18 }
 };
 int i;

 for (i = 0; i < 4; ++i) {
  if (len == offsets[i].len
      && (!only_if_not_set || SYSROM_roms[i].unset)) {

   char const * const *common_filename = common_filenames + offsets[i].offset;
   do {
    if (strcmp(filename, *common_filename) == 0)
     return offsets[i].id;
   } while (*++common_filename != ((void*)0));
  }
 }
 return -1;
}
