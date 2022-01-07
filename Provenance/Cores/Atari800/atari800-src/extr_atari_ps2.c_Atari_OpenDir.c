
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int MAX_FILES_PER_DIR ;
 int TRUE ;
 int Util_splitpath (char const*,int ,int *) ;
 scalar_t__ dir_i ;
 scalar_t__ dir_n ;
 int dir_path ;
 int mcDir ;
 scalar_t__ mcGetDir (int ,int ,char const*,int ,int ,int ) ;
 int mcSync (int ,int *,scalar_t__*) ;
 scalar_t__ strncmp (char const*,char*,int) ;

int Atari_OpenDir(const char *filename)
{

 if (strncmp(filename, "mc0:/", 5) != 0)
  return FALSE;
 dir_n = mcGetDir(0, 0, filename + 4, 0 , MAX_FILES_PER_DIR, mcDir);
 mcSync(0,((void*)0),&dir_n);
 if (dir_n < 0)
  return FALSE;
 dir_i = 0;

 Util_splitpath(filename, dir_path, ((void*)0));
 return TRUE;
}
