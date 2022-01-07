
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PicoAutoRgnOrder ;
 int PicoRegionOverride ;
 char const* static_buff ;
 int strcat (char const*,char const*) ;
 int strcpy (char const*,char*) ;

__attribute__((used)) static const char *mgn_opt_region(int id, int *offs)
{
 static const char *names[] = { "Auto", "      Japan NTSC", "      Japan PAL", "      USA", "      Europe" };
 static const char *names_short[] = { "", " JP", " JP", " US", " EU" };
 int code = PicoRegionOverride;
 int u, i = 0;

 *offs = -6;
 if (code) {
  code <<= 1;
  while ((code >>= 1)) i++;
  if (i > 4)
   return "unknown";
  return names[i];
 } else {
  strcpy(static_buff, "Auto:");
  for (u = 0; u < 3; u++) {
   code = (PicoAutoRgnOrder >> u*4) & 0xf;
   for (i = 0; code; code >>= 1, i++)
    ;
   strcat(static_buff, names_short[i]);
  }
  return static_buff;
 }
}
