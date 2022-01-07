
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rom_exts ;
typedef int other_exts ;


 scalar_t__ strcasecmp (char const*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static unsigned short file2color(const char *fname)
{
 const char *ext = fname + strlen(fname) - 3;
 static const char *rom_exts[] = { "zip", "bin", "smd", "gen", "iso", "cso", "cue" };
 static const char *other_exts[] = { "gmv", "pat" };
 int i;

 if (ext < fname) ext = fname;
 for (i = 0; i < sizeof(rom_exts)/sizeof(rom_exts[0]); i++)
  if (strcasecmp(ext, rom_exts[i]) == 0) return 0xfdf7;
 for (i = 0; i < sizeof(other_exts)/sizeof(other_exts[0]); i++)
  if (strcasecmp(ext, other_exts[i]) == 0) return 0xaff5;
 return 0xffff;
}
