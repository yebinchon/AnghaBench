
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int array_size (char const**) ;
 char const** rom_exts ;
 scalar_t__ strcasecmp (char const*,char const*) ;
 int strlen (char const*) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static unsigned short fname2color(const char *fname)
{
 static const char *other_exts[] = { "gmv", "pat" };
 const char *ext;
 int i;

 ext = strrchr(fname, '.');
 if (ext++ == ((void*)0)) {
  ext = fname + strlen(fname) - 3;
  if (ext < fname) ext = fname;
 }

 for (i = 0; rom_exts[i] != ((void*)0); i++)
  if (strcasecmp(ext, rom_exts[i]) == 0) return 0xbdff;
 for (i = 0; i < array_size(other_exts); i++)
  if (strcasecmp(ext, other_exts[i]) == 0) return 0xaff5;
 return 0xffff;
}
