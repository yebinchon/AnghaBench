
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 int CPU_SetN ;
 int CPU_regY ;
 scalar_t__ Devices_GetAtariPath (size_t,char*) ;
 size_t Devices_GetNumber (int ) ;
 int Devices_H_LoadProceed (int) ;
 int * Devices_atari_h_dir ;
 char* Devices_h_exe_path ;
 int FALSE ;
 int IS_DIR_SEP (char const) ;
 int Log_print (char*) ;
 int Util_catpath (int ,int ,int ) ;
 char* atari_filename ;
 int atari_path ;
 int * binf ;
 scalar_t__ devbug ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 int fread (int*,int,int,int *) ;
 size_t h_devnum ;
 int host_path ;
 int memcpy (char*,char const*,int) ;

__attribute__((used)) static void Devices_H_Load(int mydos)
{
 const char *p;
 UBYTE buf[2];
 if (devbug)
  Log_print("LOAD Command");
 h_devnum = Devices_GetNumber(FALSE);
 if (h_devnum < 0)
  return;


 for (p = Devices_h_exe_path; *p != '\0'; ) {
  int devnum;
  const char *q;
  char *r;
  if (p[0] == 'H' && p[1] >= '1' && p[1] <= '4' && p[2] == ':') {
   devnum = p[1] - '1';
   p += 3;
  }
  else
   devnum = h_devnum;
  for (q = p; *q != '\0' && *q != ';'; q++);
  r = atari_filename + (q - p);
  if (q != p) {
   memcpy(atari_filename, p, q - p);
   if (!IS_DIR_SEP(q[-1]))
    *r++ = '>';
  }
  if (Devices_GetAtariPath(devnum, r) == 0)
   return;
  Util_catpath(host_path, Devices_atari_h_dir[devnum], atari_path);
  binf = fopen(host_path, "rb");
  if (binf != ((void*)0) || *q == '\0')
   break;
  p = q + 1;
 }

 if (binf == ((void*)0)) {

  if (Devices_GetAtariPath(h_devnum, atari_filename) == 0)
   return;
  Util_catpath(host_path, Devices_atari_h_dir[h_devnum], atari_path);
  binf = fopen(host_path, "rb");
  if (binf == ((void*)0)) {
   CPU_regY = 170;
   CPU_SetN;
   return;
  }
 }


 if (fread(buf, 1, 2, binf) != 2 || buf[0] != 0xff || buf[1] != 0xff) {
  fclose(binf);
  binf = ((void*)0);
  Log_print("H: load: not valid BIN file");
  CPU_regY = 180;
  CPU_SetN;
  return;
 }

 Devices_H_LoadProceed(mydos);
}
