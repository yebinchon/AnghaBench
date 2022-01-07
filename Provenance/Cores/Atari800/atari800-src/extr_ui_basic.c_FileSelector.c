
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BasicUIMessage (char*,int) ;
 int Box (int,int,int ,int,int,int) ;
 int ClearScreen () ;
 int FALSE ;
 int FILENAME_MAX ;
 int FilenamesFree () ;
 int GetCurrentDir (char*) ;
 int GetDirectory (char*) ;
 int NCOLUMNS ;
 int NROWS ;
 int PLATFORM_DisplayScreen () ;
 int Select (int,int,char const**,int *,int *,int *,int *,int ,int,int,int,int,int,char*,int*) ;
 int TRUE ;
 int TitleScreen (char*) ;
 int UI_USER_DELETE ;
 int UI_USER_TOGGLE ;
 int Util_catpath (char*,char*,char const*) ;
 scalar_t__ Util_direxists (char*) ;
 int Util_splitpath (char*,char*,char*) ;
 int _fixpath (char*,char*) ;
 char const** filenames ;
 int n_filenames ;
 int strcatchr (char*,char) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strcpy (char*,char*) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static int FileSelector(char *path, int select_dir, char pDirectories[][FILENAME_MAX], int nDirectories)
{
 char current_dir[FILENAME_MAX];
 char highlighted_file[FILENAME_MAX + 2];
 highlighted_file[0] = '\0';
 if (path[0] == '\0' && nDirectories > 0)
  strcpy(current_dir, pDirectories[0]);
 else if (select_dir)
  strcpy(current_dir, path);
 else
  Util_splitpath(path, current_dir, highlighted_file);
 if (current_dir[0] == '\0')

  GetCurrentDir(current_dir);
 for (;;) {
  int index = 0;
  int i;
  TitleScreen("            Please wait...            ");
  PLATFORM_DisplayScreen();

  for (;;) {
   GetDirectory(current_dir);

   if (n_filenames > 0)
    break;



   FilenamesFree();
   {
    char temp[FILENAME_MAX];
    strcpy(temp, current_dir);
    Util_splitpath(temp, current_dir, ((void*)0));
   }
   if (current_dir[0] == '\0') {


    GetCurrentDir(current_dir);
    GetDirectory(current_dir);
    if (n_filenames >= 0)
     break;

    FilenamesFree();
    BasicUIMessage("No files inside directory", 1);
    return FALSE;
   }
  }

  if (highlighted_file[0] != '\0') {
   for (i = 0; i < n_filenames; i++) {
    if (strcmp(filenames[i], highlighted_file) == 0) {
     index = i;
     break;
    }
   }
  }

  for (;;) {
   int seltype;
   const char *selected_filename;

   ClearScreen();
   TitleScreen(current_dir);
   Box(0x9a, 0x94, 0, 1, 39, 23);

   index = Select(index, n_filenames, filenames, ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                  20, 2, 1, 2, 37 / 2, FALSE,
                  select_dir ? "Space: select current directory" : ((void*)0),
                  &seltype);

   if (index == -2) {

    if (nDirectories > 0) {

     int current_index = nDirectories - 1;

     for (i = 0; i < nDirectories; i++)
      if (strcmp(pDirectories[i], current_dir) == 0) {
       current_index = i;
       break;
      }
     i = current_index;
     do {
      if (++i >= nDirectories)
       i = 0;
      if (Util_direxists(pDirectories[i])) {
       strcpy(current_dir, pDirectories[i]);
       break;
      }
     } while (i != current_index);
    }
    highlighted_file[0] = '\0';
    break;
   }
   if (index < 0) {

    FilenamesFree();
    return FALSE;
   }
   if (seltype == UI_USER_DELETE) {

    char new_dir[FILENAME_MAX];
    Util_splitpath(current_dir, new_dir, highlighted_file + 1);
    if (Util_direxists(new_dir)) {
     strcpy(current_dir, new_dir);
     highlighted_file[0] = '[';
     strcatchr(highlighted_file, ']');
     break;
    }
    BasicUIMessage("Cannot enter parent directory", 1);
    continue;
   }
   if (seltype == UI_USER_TOGGLE && select_dir) {

    strcpy(path, current_dir);
    FilenamesFree();
    return TRUE;
   }
   selected_filename = filenames[index];
   if (selected_filename[0] == '[') {

    char new_dir[FILENAME_MAX];

    highlighted_file[0] = '\0';
    if (strcmp(selected_filename, "[..]") == 0) {

     Util_splitpath(current_dir, new_dir, highlighted_file + 1);
     highlighted_file[0] = '[';
     strcatchr(highlighted_file, ']');
    }
    else {

     char *pbracket = strrchr(selected_filename, ']');
     if (pbracket == ((void*)0))
      continue;
     *pbracket = '\0';
     Util_catpath(new_dir, current_dir, selected_filename + 1);
    }

    if (Util_direxists(new_dir)) {
     strcpy(current_dir, new_dir);
     break;
    }
    BasicUIMessage("Cannot enter selected directory", 1);
    continue;
   }
   if (!select_dir) {

    Util_catpath(path, current_dir, selected_filename);
    FilenamesFree();
    return TRUE;
   }
  }

  FilenamesFree();
 }
}
