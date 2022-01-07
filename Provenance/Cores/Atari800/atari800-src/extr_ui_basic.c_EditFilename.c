
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EditString (int,int,char const*,char*,int,int,int,int,char**,int) ;
 int FALSE ;
 int FILENAME_MAX ;
 int TRUE ;
 char Util_DIR_SEP_CHAR ;
 int * getcwd (char*,int) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static int EditFilename(const char *title, char *filename, char directories[][FILENAME_MAX], int n_directories)
{
 char edited_filename[FILENAME_MAX];
 strcpy(edited_filename, filename);
 if (edited_filename[0] == '\0') {
  if (n_directories > 0)
   strcpy(edited_filename, directories[0]);
 }
 if (!EditString(0x9a, 0x94, title, edited_filename, FILENAME_MAX, 1, 11, 36, directories, n_directories))
  return FALSE;
 strcpy(filename, edited_filename);
 return TRUE;
}
